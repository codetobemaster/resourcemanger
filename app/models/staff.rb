class Staff < ActiveRecord::Base
self.table_name = 'tblEmployee'
self.primary_key = 'EmployeeID'
belongs_to :positions, class_name: "Position", foreign_key: "PositionID"
has_one :user
has_many :time_sheets,class_name: "TimeSheet", foreign_key: "staff_id"
has_many :time_in_time_outs, class_name: "TimeInTimeOut", foreign_key: "EmployeeID"
belongs_to :department, class_name: "Department", foreign_key: "DepartmentID"
attr_accessible :CardID, :DepartmentID, :EmployeeName, :FirstName, :DateOfBirth,
:LastName, :Gender, :IdentityCard, :InsuranceID, :Address, :District, :Province, :BirthPlace,
:Resident, :Phone, :Mobile, :Email, :MarriageStatus, :People, :Religious,:ProfesstionalLevel,
:Qualification, :EnglishLevel, :InfomaticLevel, :OtherCertificate, :Discipline, :Picture, :RecuitDate,
:StopReason, :StopDate, :StartTrial, :StartDate, :NgayKiLai, :ContractID, :BasicSalary, :SalaryID,
:HamfulAllowance, :ResponsibleAllowance, :LuncheAllowance, :Note, :StartDateInsurance, :HospitalID,
:IntimateAllowance, :TaxID, :Commune, :Nationality,:FamilyConditionNumber,:PositionID

validates :EmployeeName, :presence => true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :Email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: true
validates_associated :time_in_time_outs, :positions

@@queries=''


# Report month

def self.search(employee_name,department_id,select,workingdate,contracted)
if(!select.nil?&& !select.blank?)
else
@@queries=''

# if search no have contraced
if (!contracted.nil? && !contracted.blank?)


if(!employee_name.nil? && !employee_name.blank? && !department_id.nil? && !department_id.blank?&&  !contracted.nil? && !contracted.blank?)

        @@queries= "DepartmentID= ? AND EmployeeName like ? AND StartDate IS null ",department_id.to_i,'%'<< employee_name <<'%'

else
        if(!employee_name.nil? && !employee_name.blank?  &&  !contracted.nil? && !contracted.blank? )
         @@queries= "EmployeeName like ? AND StartDate IS null ",'%'<< employee_name << '%'
        else
                if(!department_id.nil? && !department_id.blank? && !contracted.nil? && !contracted.blank? )
                 @@queries= "DepartmentID= ? AND StartDate IS null",department_id.to_i
                 else
                         if(!employee_name.nil? && !employee_name.blank? && !department_id.nil? && !department_id.blank? )
                           @@queries= "EmployeeName like ? AND DepartmentID= ?  ",'%'<< employee_name << '%',department_id.to_i
                         else
                           if(!department_id.nil? && !department_id.blank?)
                                 @@queries= "DepartmentID= ? ",department_id.to_i
                                 else
                                 if(!employee_name.nil? && !employee_name.blank?)
                                   @@queries= "EmployeeName like ? ",'%'<< employee_name << '%'
                                   else
                                           if( !contracted.nil? && !contracted.blank?)
                                                 @@queries= "StartDate IS null"
                                           end
                                   end
                           end
                         end
                 end
        end
end




else # if search have date.



if(!employee_name.nil? && !employee_name.blank? && !department_id.nil? && !department_id.blank?&&  !workingdate.nil? && !workingdate.blank?)

        @@queries= "DepartmentID= ? AND EmployeeName like ? AND MONTH(StartDate)= ?  AND YEAR(StartDate)=? ",department_id.to_i,'%'<< employee_name <<'%',workingdate.to_date.month,workingdate.to_date.year

else
        if(!employee_name.nil? && !employee_name.blank?  &&  !workingdate.nil? && !workingdate.blank? )
         @@queries= "EmployeeName like ? AND MONTH(StartDate)= ? AND YEAR(StartDate)=? ",'%'<< employee_name << '%',workingdate.to_date.month,workingdate.to_date.year
        else
                if(!department_id.nil? && !department_id.blank? && !workingdate.nil? && !workingdate.blank? )
                 @@queries= "DepartmentID= ? AND MONTH(StartDate)= ? AND YEAR(StartDate)=? ",department_id.to_i,workingdate.to_date.month,workingdate.to_date.year
                 else
                         if(!employee_name.nil? && !employee_name.blank? && !department_id.nil? && !department_id.blank? )
                           @@queries= "EmployeeName like ? AND DepartmentID= ?  ",'%'<< employee_name << '%',department_id.to_i
                         else
                           if(!department_id.nil? && !department_id.blank?)
                                 @@queries= "DepartmentID= ? ",department_id.to_i
                                 else
                                 if(!employee_name.nil? && !employee_name.blank?)
                                   @@queries= "EmployeeName like ? ",'%'<< employee_name << '%'
                                   else
                                           if( !workingdate.nil? && !workingdate.blank?)
                                                 @@queries= "MONTH(StartDate)= ? AND YEAR(StartDate)=? ",workingdate.to_date.month,workingdate.to_date.year
                                           end
                                   end
                           end
                         end
                 end
        end
end











end


# if select=nil
end
  Staff.where(@@queries)
end

end
