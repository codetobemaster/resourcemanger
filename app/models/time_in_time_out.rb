class TimeInTimeOut < ActiveRecord::Base
self.table_name= 'tblTimeInTimeOut'
self.primary_key= 'TimeID'
belongs_to :staff , class_name:'Staff', foreign_key: 'EmployeeID'
attr_accessible :EmployeeID, :TimeIn, :TimeOut, :WorkingDay, :ShiftID
default_scope order('WorkingDay DESC')

validates_time :TimeIn, :between => ['1.00am', '23:59pm']
validates_time :TimeOut, :between => ['1.00am', '23:59pm']

validates_date :WorkingDay ,before: Proc.new { 1.day.from_now.to_date }, before_message: "Woking day is not greater than current day", after: Date.new(2011,1,1), after_message: "Woking day is after 2011"


  def self.search(woking_day,dep)
  queries=''
   if (woking_day&& dep && !dep.blank? && !woking_day.blank?)
   time =woking_day.to_time
      queries="WorkingDay between ? and ? and tblDepartment.DepartmentID =?",time.beginning_of_day,time.end_of_day -   1.second,dep.to_i
     # TimeInTimeOut.joins(:staff=>:department).where(@queries)
   else
   #TimeInTimeOut.joins(:staff=>:department)
   if(woking_day && !woking_day.blank? )
   time =woking_day.to_time
    queries="WorkingDay between ? and ? ",time.beginning_of_day,time.end_of_day -   1.second
   else
    if(dep && !dep.blank? )
     queries="tblDepartment.DepartmentID =?",dep.to_i
    end # if department is oke
   end # wokingday is oke
   end # end wokingday and department
 # run sql
 if(!queries.blank?)
 TimeInTimeOut.joins(:staff=>:department).where(queries)
 else
   TimeInTimeOut.joins(:staff=>:department)
 end
  end


# Report month

def self.report_month(department_id,year,month)
queries=''
if(department_id.to_i!=0)
        queries= "YEAR(WorkingDay)= ? AND MONTH(WorkingDay)= ? AND tblDepartment.DepartmentID=?",year.to_i, month.to_i,department_id.to_i
        else
         queries= "YEAR(WorkingDay)= ? AND MONTH(WorkingDay)= ? ",year.to_i, month.to_i
end
  TimeInTimeOut.joins(:staff=>:department).where(queries)
end


end
