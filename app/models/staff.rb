class Staff < ActiveRecord::Base
self.table_name = 'tblEmployee'
self.primary_key = 'EmployeeID'
belongs_to :positions, class_name: "Position", foreign_key: "PositionID"
has_many :time_in_time_outs, class_name: "TimeInTimeOut", foreign_key: "EmployeeID"
belongs_to :department, class_name: "Department", foreign_key: "DepartmentID"
attr_accessible :CardID, :DepartmentID, :EmployeeName, :FirstName, :DateOfBirth,
:LastName, :Gender, :IdentityCard, :InsuranceID, :Address, :District, :Province, :BirthPlace,
:Resident, :Phone, :Mobile, :Email, :MarriageStatus, :People, :Religious,:ProfesstionalLevel,
:Qualification, :EnglishLevel, :InfomaticLevel, :OtherCertificate, :Discipline, :Picture, :RecuitDate,
:StopReason, :StopDate, :StartTrial, :StartDate, :NgayKiLai, :ContractID, :BasicSalary, :SalaryID,
:HamfulAllowance, :ResponsibleAllowance, :LuncheAllowance, :Note, :StartDateInsurance, :HospitalID,
:IntimateAllowance, :TaxID, :Commune, :Nationality,:FamilyConditionNumber

@@queries=''


# Report month

def self.search(employee_id,department_id,select)
if(!select.nil?&& !select.blank?)
else
@@queries=''
if(!employee_id.nil? && !employee_id.blank? && !department_id.nil? && !department_id.blank? )
        @@queries= "DepartmentID= ? AND EmployeeID= ?",department_id.to_i,employee_id.to_i
  else
        if(!employee_id.nil? && !employee_id.blank? )
         @@queries= "EmployeeID= ?",employee_id.to_i
        else
        if(!department_id.nil? && !department_id.blank? )
         @@queries= "DepartmentID= ?",department_id.to_i
         end

        end
end
# if select=nil
end
  Staff.where(@@queries)
end

end
