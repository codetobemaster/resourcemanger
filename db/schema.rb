# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121022063410) do

  create_table "BackUp_tblLunchSheet", :id => false, :force => true do |t|
    t.integer "Month",                                             :null => false
    t.integer "Year",                                              :null => false
    t.integer "EmployeeID",                                        :null => false
    t.string  "Day31",              :limit => 10
    t.string  "Day30",              :limit => 10
    t.string  "Day29",              :limit => 10
    t.string  "Day28",              :limit => 10
    t.string  "Day27",              :limit => 10
    t.string  "Day26",              :limit => 10
    t.string  "Day25",              :limit => 10
    t.string  "Day24",              :limit => 10
    t.string  "Day23",              :limit => 10
    t.string  "Day22",              :limit => 10
    t.string  "Day21",              :limit => 10
    t.string  "Day20",              :limit => 10
    t.string  "Day19",              :limit => 10
    t.string  "Day18",              :limit => 10
    t.string  "Day17",              :limit => 10
    t.string  "Day16",              :limit => 10
    t.string  "Day15",              :limit => 10
    t.string  "Day14",              :limit => 10
    t.string  "Day13",              :limit => 10
    t.string  "Day12",              :limit => 10
    t.string  "Day11",              :limit => 10
    t.string  "Day10",              :limit => 10
    t.string  "Day9",               :limit => 10
    t.string  "Day8",               :limit => 10
    t.string  "Day7",               :limit => 10
    t.string  "Day6",               :limit => 10
    t.string  "Day5",               :limit => 10
    t.string  "Day4",               :limit => 10
    t.string  "Day3",               :limit => 10
    t.string  "Day2",               :limit => 10
    t.string  "Day1",               :limit => 10
    t.float   "TotalPaidLunch",     :limit => 53, :default => 0.0
    t.float   "TotalNormalLunch",   :limit => 53, :default => 0.0
    t.float   "TotalOverTimeLunch", :limit => 53, :default => 0.0
    t.float   "TotalAllowance",     :limit => 53, :default => 0.0
  end

  create_table "BackUp_tblRegWorkingTime", :id => false, :force => true do |t|
    t.integer  "WorkingTimeID",               :null => false
    t.integer  "EmployeeID",                  :null => false
    t.integer  "ShiftID",                     :null => false
    t.datetime "Day",                         :null => false
    t.float    "TimeSheet",     :limit => 53
  end

  create_table "BackUp_tblTimeInTimeOut", :id => false, :force => true do |t|
    t.integer  "TimeID",     :null => false
    t.integer  "EmployeeID", :null => false
    t.datetime "TimeIn"
    t.datetime "TimeOut"
    t.datetime "WorkingDay"
    t.integer  "ShiftID"
  end

  create_table "BackUp_tblTimeSheet", :id => false, :force => true do |t|
    t.integer "Month",                                      :null => false
    t.integer "Year",                                       :null => false
    t.integer "EmployeeID",                                 :null => false
    t.integer "OverTime",   :limit => 2,                    :null => false
    t.string  "Day1",       :limit => 10
    t.string  "Day2",       :limit => 10
    t.string  "Day3",       :limit => 10
    t.string  "Day4",       :limit => 10
    t.string  "Day5",       :limit => 10
    t.string  "Day6",       :limit => 10,                   :null => false
    t.string  "Day7",       :limit => 10
    t.string  "Day8",       :limit => 10
    t.string  "Day9",       :limit => 10
    t.string  "Day10",      :limit => 10
    t.string  "Day11",      :limit => 10
    t.string  "Day12",      :limit => 10
    t.string  "Day13",      :limit => 10
    t.string  "Day14",      :limit => 10
    t.string  "Day15",      :limit => 10
    t.string  "Day16",      :limit => 10
    t.string  "Day17",      :limit => 10
    t.string  "Day18",      :limit => 10
    t.string  "Day19",      :limit => 10
    t.string  "Day20",      :limit => 10
    t.string  "Day21",      :limit => 10
    t.string  "Day22",      :limit => 10
    t.string  "Day23",      :limit => 10
    t.string  "Day24",      :limit => 10
    t.string  "Day25",      :limit => 10
    t.string  "Day26",      :limit => 10
    t.string  "Day27",      :limit => 10
    t.string  "Day28",      :limit => 10
    t.string  "Day29",      :limit => 10
    t.string  "Day30",      :limit => 10
    t.string  "Day31",      :limit => 10
    t.float   "Total",      :limit => 53,  :default => 0.0
    t.float   "OverTime1",  :limit => 53
    t.float   "OverTime2",  :limit => 53
    t.float   "OverTime3",  :limit => 53
    t.float   "OverTime4",  :limit => 53
    t.string  "Note",       :limit => 200
  end

  create_table "dtproperties", :id => false, :force => true do |t|
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start"
    t.datetime "end"
    t.integer  "status"
    t.string   "other"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "properties", :force => true do |t|
    t.string   "property_type"
    t.string   "property_key"
    t.string   "property_value"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "schedules", :force => true do |t|
    t.integer  "user_attend_projects_id"
    t.integer  "year"
    t.integer  "month"
    t.integer  "week"
    t.integer  "numberdays"
    t.text     "taskcontent"
    t.text     "comment"
    t.integer  "status"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "schedules", ["user_attend_projects_id"], :name => "index_schedules_on_user_attend_projects_id"

  create_table "tblCompany", :id => false, :force => true do |t|
    t.integer  "CompanyID",                        :null => false
    t.string   "Name",              :limit => 250
    t.string   "Address",           :limit => 250
    t.string   "City",              :limit => 50
    t.string   "Country",           :limit => 50
    t.string   "Tel",               :limit => 50
    t.string   "Fax",               :limit => 50
    t.string   "Email",             :limit => 50
    t.string   "Website",           :limit => 50
    t.string   "TaxCode",           :limit => 50
    t.string   "BankName",          :limit => 50
    t.string   "BankAccount",       :limit => 50
    t.datetime "FoundedDay"
    t.string   "Note",              :limit => 250
    t.integer  "CompanyType"
    t.boolean  "Inactive"
    t.boolean  "DefaultCompany"
    t.string   "HealthInsuranceID", :limit => 50
    t.string   "CompanyCode",       :limit => 50
    t.string   "District",          :limit => 50
  end

  create_table "tblContract", :primary_key => "ContractID", :force => true do |t|
    t.string  "ContractName", :limit => 50,  :null => false
    t.string  "Note",         :limit => 100
    t.boolean "InsurancePay"
  end

  create_table "tblDayType", :primary_key => "DayID", :force => true do |t|
    t.string  "DayName",         :limit => 50,                    :null => false
    t.string  "DayColor",        :limit => 50
    t.float   "DayFactor",       :limit => 53
    t.string  "DayShortName",    :limit => 5
    t.integer "Quantity"
    t.boolean "InsuranceCheck",                :default => false
    t.float   "InsuranceFactor", :limit => 53, :default => 0.0
  end

  add_index "tblDayType", ["DayName"], :name => "IX_tblDayType_1", :unique => true
  add_index "tblDayType", ["DayShortName"], :name => "IX_tblDayType", :unique => true

  create_table "tblDepartment", :primary_key => "DepartmentID", :force => true do |t|
    t.string  "DepartmentName",   :limit => 50,                :null => false
    t.integer "ParentNode",                                    :null => false
    t.string  "Description",      :limit => 50
    t.string  "DepartmentNameJP", :limit => 50
    t.integer "GroupID",                        :default => 0
    t.integer "SortIndex",        :limit => 2
  end

  create_table "tblDepartmentGroup", :id => false, :force => true do |t|
    t.integer "GroupID",                         :null => false
    t.string  "GroupName",        :limit => 250
    t.string  "GroupDescription", :limit => 400
  end

  create_table "tblDepartmentHistory", :primary_key => "DepartmentHistoryID", :force => true do |t|
    t.integer  "EmployeeID",                   :null => false
    t.integer  "DepartmentID",                 :null => false
    t.string   "DecisionNumber", :limit => 20
    t.datetime "ModifiedDate"
    t.string   "Note"
  end

  create_table "tblEmployee", :primary_key => "EmployeeID", :force => true do |t|
    t.string   "CardID",                :limit => 10,                     :null => false
    t.integer  "DepartmentID",                                            :null => false
    t.integer  "PositionID",                                              :null => false
    t.string   "EmployeeName",          :limit => 50,                     :null => false
    t.string   "FirstName",             :limit => 50
    t.boolean  "Deleted",                              :default => false
    t.string   "LastName",              :limit => 50
    t.integer  "Gender",                :limit => 1
    t.datetime "DateOfBirth"
    t.string   "IdentityCard",          :limit => 15
    t.string   "InsuranceID",           :limit => 15
    t.datetime "Issue"
    t.string   "Address"
    t.string   "Commune",               :limit => 50
    t.string   "District",              :limit => 50
    t.string   "Province",              :limit => 50
    t.string   "BirthPlace"
    t.string   "Resident"
    t.string   "Phone",                 :limit => 15
    t.string   "Mobile",                :limit => 15
    t.string   "Email",                 :limit => 100
    t.integer  "MarriageStatus",        :limit => 2
    t.integer  "People"
    t.integer  "Religious"
    t.string   "Nationality",           :limit => 50
    t.integer  "ProfessionalLevel",     :limit => 2
    t.integer  "Qualification",         :limit => 2
    t.integer  "EnglishLevel",          :limit => 2
    t.integer  "InformaticLevel",       :limit => 2
    t.string   "OtherCertificate",      :limit => 50
    t.string   "Discipline",            :limit => 50
    t.string   "Picture"
    t.datetime "RecruitDate"
    t.string   "StopReason"
    t.datetime "StopDate"
    t.datetime "StartTrial"
    t.datetime "StartDate"
    t.datetime "NgayKyLai"
    t.integer  "ContractID"
    t.decimal  "BasicSalary"
    t.integer  "SalaryID",                             :default => 0
    t.decimal  "ResponsibleAllowance"
    t.decimal  "HarmfulAllowance"
    t.decimal  "LunchAllowance"
    t.string   "Note"
    t.datetime "StartDateInsurance"
    t.boolean  "InsuranceShelf",                       :default => false
    t.boolean  "InsuranceCheck",                       :default => false
    t.string   "HospitalID",            :limit => 10
    t.decimal  "IntimateAllowance"
    t.integer  "FamilyConditionNumber", :limit => 2
    t.string   "TaxID",                 :limit => 10
    t.string   "BarCode",               :limit => 13
  end

  create_table "tblEmployeeHistory", :primary_key => "EmployeeHistoryID", :force => true do |t|
    t.integer  "EmployeeID",           :null => false
    t.integer  "DepartmentID"
    t.integer  "PositionID"
    t.decimal  "BasicSalary"
    t.decimal  "LunchAllowance"
    t.decimal  "HarmfulAllowance"
    t.decimal  "ResponsibleAllowance"
    t.datetime "Modified"
    t.string   "Note"
  end

  create_table "tblEmployeeStatusInDay", :id => false, :force => true do |t|
    t.integer "TotalWork"
    t.integer "TotalLeave"
    t.integer "TotalRest"
    t.integer "TotalAbsent"
    t.integer "TotalGoHome"
    t.integer "TotalWorkLate"
    t.integer "TotalGoHomeLate"
    t.integer "TotalRestLate"
  end

  create_table "tblEmployeeSummary", :id => false, :force => true do |t|
    t.integer "Month",           :null => false
    t.integer "Year",            :null => false
    t.integer "EmployeeID",      :null => false
    t.integer "TotalWorkingDay"
    t.integer "TotalRest"
    t.integer "TotalLeave"
    t.integer "TotalAbsent"
  end

  create_table "tblFixSalary", :id => false, :force => true do |t|
    t.integer "SalaryID",                                                       :default => 1, :null => false
    t.string  "SalaryName",        :limit => 50,                                               :null => false
    t.string  "SalaryDescription", :limit => 50,                                               :null => false
    t.decimal "SalaryBasic",                     :precision => 18, :scale => 0,                :null => false
    t.integer "ContractID",                                                                    :null => false
  end

  create_table "tblHospital", :primary_key => "HospitalCode", :force => true do |t|
    t.string "HospitalID",      :limit => 10,  :null => false
    t.string "HospitalName",    :limit => 250, :null => false
    t.string "HospitalAddress", :limit => 400
  end

  create_table "tblInsuranceC47B", :id => false, :force => true do |t|
    t.datetime "IDate",            :null => false
    t.integer  "TongLaoDong",      :null => false
    t.integer  "PhieuKCB",         :null => false
    t.decimal  "TongLuong",        :null => false
    t.decimal  "TongNopTheoLuong", :null => false
    t.decimal  "SoDieuChinh",      :null => false
    t.decimal  "TongNopBH",        :null => false
  end

  create_table "tblInsurancePay", :id => false, :force => true do |t|
    t.boolean "Checked",                    :null => false
    t.integer "IQuarter",      :limit => 1, :null => false
    t.integer "IYear",                      :null => false
    t.integer "TotalEmployee",              :null => false
    t.decimal "TotalSalary",                :null => false
    t.decimal "TotalPay",                   :null => false
    t.decimal "LastBring",                  :null => false
    t.decimal "ReadyPay",                   :null => false
    t.decimal "NextSend",                   :null => false
  end

  create_table "tblInsurancePeriod", :primary_key => "PeriodID", :force => true do |t|
    t.datetime "StartPointDate", :null => false
    t.datetime "EndPointDate",   :null => false
    t.integer  "InsuranceYear"
  end

  create_table "tblLeaveSchedule", :primary_key => "LeaveID", :force => true do |t|
    t.integer  "EmployeeID",                  :null => false
    t.string   "LeaveLocation", :limit => 50, :null => false
    t.string   "WorkInfo"
    t.datetime "StartLeave"
    t.datetime "EndLeave"
  end

  create_table "tblLogUsers", :primary_key => "LogUsersID", :force => true do |t|
    t.integer  "UserID",                     :null => false
    t.datetime "AccessTime",                 :null => false
    t.integer  "DepartmentID",               :null => false
    t.string   "IPAdress",     :limit => 21, :null => false
  end

  create_table "tblLunch", :primary_key => "LunchID", :force => true do |t|
    t.integer  "EmployeeID", :null => false
    t.datetime "WorkingDay", :null => false
    t.decimal  "LunchMoney"
  end

  create_table "tblLunchSheet", :id => false, :force => true do |t|
    t.integer "Month",                                             :null => false
    t.integer "Year",                                              :null => false
    t.integer "EmployeeID",                                        :null => false
    t.string  "Day31",              :limit => 10
    t.string  "Day30",              :limit => 10
    t.string  "Day29",              :limit => 10
    t.string  "Day28",              :limit => 10
    t.string  "Day27",              :limit => 10
    t.string  "Day26",              :limit => 10
    t.string  "Day25",              :limit => 10
    t.string  "Day24",              :limit => 10
    t.string  "Day23",              :limit => 10
    t.string  "Day22",              :limit => 10
    t.string  "Day21",              :limit => 10
    t.string  "Day20",              :limit => 10
    t.string  "Day19",              :limit => 10
    t.string  "Day18",              :limit => 10
    t.string  "Day17",              :limit => 10
    t.string  "Day16",              :limit => 10
    t.string  "Day15",              :limit => 10
    t.string  "Day14",              :limit => 10
    t.string  "Day13",              :limit => 10
    t.string  "Day12",              :limit => 10
    t.string  "Day11",              :limit => 10
    t.string  "Day10",              :limit => 10
    t.string  "Day9",               :limit => 10
    t.string  "Day8",               :limit => 10
    t.string  "Day7",               :limit => 10
    t.string  "Day6",               :limit => 10
    t.string  "Day5",               :limit => 10
    t.string  "Day4",               :limit => 10
    t.string  "Day3",               :limit => 10
    t.string  "Day2",               :limit => 10
    t.string  "Day1",               :limit => 10
    t.float   "TotalPaidLunch",     :limit => 53, :default => 0.0
    t.float   "TotalNormalLunch",   :limit => 53, :default => 0.0
    t.float   "TotalOverTimeLunch", :limit => 53, :default => 0.0
    t.float   "TotalAllowance",     :limit => 53, :default => 0.0
  end

  create_table "tblMonthLate", :id => false, :force => true do |t|
    t.integer "MonthLateID",     :null => false
    t.integer "EmployeeID",      :null => false
    t.integer "NumberOfLateDay", :null => false
  end

  create_table "tblPayrollAllocation", :id => false, :force => true do |t|
    t.string "EmployeeClassID", :limit => 20, :null => false
    t.string "PayrollItemID",   :limit => 20, :null => false
    t.string "DebitAccount",    :limit => 20
    t.string "CreditAccount",   :limit => 20
    t.string "JobID",           :limit => 20
    t.string "PhaseID",         :limit => 20
    t.string "CostID",          :limit => 20
    t.string "ContractID",      :limit => 20
    t.string "ClassID",         :limit => 20
  end

  create_table "tblPayrollItem", :id => false, :force => true do |t|
    t.string  "PayrollItemID",    :limit => 20,  :null => false
    t.string  "PIName",           :limit => 100
    t.boolean "PayOnce",                         :null => false
    t.integer "PayMonth",         :limit => 2
    t.boolean "TimeSheet",                       :null => false
    t.integer "StandardQuantity"
    t.integer "LimitQuantity"
    t.decimal "Coefficient"
    t.string  "Formula"
    t.integer "PayrollTypeApply"
    t.boolean "WomanOnly",                       :null => false
    t.integer "PICategoryID"
    t.integer "IncomeType"
    t.boolean "IsTaxItem",                       :null => false
    t.integer "TaxType",          :limit => 2
    t.string  "TaxID",            :limit => 20
    t.integer "AddToGS",          :limit => 2
    t.string  "ExpenseAccount",   :limit => 20
    t.string  "JobID",            :limit => 20
    t.string  "PhaseID",          :limit => 20
    t.string  "CostID",           :limit => 20
    t.string  "ContractID",       :limit => 20
    t.string  "ClassID",          :limit => 20
    t.string  "TaxAccount",       :limit => 20
    t.string  "Note"
    t.boolean "Inactive",                        :null => false
  end

  create_table "tblPayrollItemCategory", :id => false, :force => true do |t|
    t.integer "PICategoryID",                 :null => false
    t.string  "PICategoryName", :limit => 50
  end

  create_table "tblPermission", :id => false, :force => true do |t|
    t.integer "PermissionID",                   :null => false
    t.string  "PermissionName",   :limit => 50
    t.string  "ItemName",         :limit => 50
    t.integer "ParentNode"
    t.string  "ToolbarName",      :limit => 50
    t.string  "PermissionNameTN", :limit => 50
    t.string  "ItemNameTN",       :limit => 50
    t.string  "ToolbarNameTN",    :limit => 50
  end

  create_table "tblPosition", :primary_key => "PositionID", :force => true do |t|
    t.string "PositionName",      :limit => 30, :null => false
    t.string "Description",       :limit => 50
    t.string "PositionShortName", :limit => 10, :null => false
  end

  create_table "tblPositionHistory", :primary_key => "PositionHistoryID", :force => true do |t|
    t.integer  "EmployeeID",                   :null => false
    t.integer  "PositionID",                   :null => false
    t.string   "DecisionNumber", :limit => 20
    t.datetime "ModifiedDate"
    t.string   "Note"
  end

  create_table "tblPunish", :primary_key => "PunishID", :force => true do |t|
    t.integer  "EmployeeID",                 :null => false
    t.datetime "WorkingDay",                 :null => false
    t.integer  "PunishCardID",               :null => false
    t.string   "Reason",       :limit => 50
  end

  create_table "tblPunishCard", :primary_key => "PunishCardID", :force => true do |t|
    t.string "CardName",     :limit => 50, :null => false
    t.float  "PunishFactor", :limit => 53, :null => false
    t.string "Note",         :limit => 50
  end

  create_table "tblRegOverTime", :primary_key => "RegOverTimeID", :force => true do |t|
    t.integer  "EmployeeID",                    :null => false
    t.datetime "StartOverTime"
    t.datetime "Length"
    t.datetime "WorkingDay"
    t.integer  "DinnerAmount"
    t.integer  "Bus",              :limit => 1
    t.string   "WorkOverTimeInfo"
  end

  create_table "tblRegRestEmployee", :primary_key => "RegRestID", :force => true do |t|
    t.integer  "EmployeeID",               :null => false
    t.integer  "DayID",                    :null => false
    t.string   "RestReason"
    t.datetime "StartRest"
    t.datetime "EndRest"
    t.float    "NumDay",     :limit => 53
    t.string   "NameChild",  :limit => 50
  end

  create_table "tblRegWorkingTime", :primary_key => "WorkingTimeID", :force => true do |t|
    t.integer  "EmployeeID",               :null => false
    t.integer  "ShiftID",                  :null => false
    t.datetime "Day",                      :null => false
    t.float    "TimeSheet",  :limit => 53
  end

  create_table "tblRestDay", :id => false, :force => true do |t|
    t.datetime "DayRest",                                    :null => false
    t.float    "DayIndex",    :limit => 53, :default => 1.0, :null => false
    t.string   "Description", :limit => 50
  end

  create_table "tblRestSheet", :id => false, :force => true do |t|
    t.integer  "Year",                          :null => false
    t.integer  "EmployeeID",                    :null => false
    t.string   "Month1",          :limit => 10
    t.string   "Month2",          :limit => 10
    t.string   "Month3",          :limit => 10
    t.string   "Month4",          :limit => 10
    t.string   "Month5",          :limit => 10
    t.string   "Month6",          :limit => 10
    t.string   "Month7",          :limit => 10
    t.string   "Month8",          :limit => 10
    t.string   "Month9",          :limit => 10
    t.string   "Month10",         :limit => 10
    t.string   "Month11",         :limit => 10
    t.string   "Month12",         :limit => 10
    t.datetime "StartDate"
    t.string   "TotalRest",       :limit => 10
    t.decimal  "BasicSalary"
    t.string   "TotalRestAllow",  :limit => 10
    t.string   "TotalRestRemain", :limit => 10
    t.decimal  "ToMoney"
  end

  create_table "tblSalary", :id => false, :force => true do |t|
    t.integer "Month",                                                :null => false
    t.integer "Year",                                                 :null => false
    t.integer "EmployeeID",                                           :null => false
    t.decimal "BasicSalary",                         :default => 0.0
    t.decimal "LunchAllowance",                      :default => 0.0
    t.decimal "HarmfulAllowance",                    :default => 0.0
    t.decimal "ResponsibleAllowance",                :default => 0.0
    t.float   "TotalTimeSheet",        :limit => 53, :default => 0.0
    t.decimal "SumMoney"
    t.float   "OverTime1",             :limit => 53, :default => 0.0
    t.float   "OverTime2",             :limit => 53, :default => 0.0
    t.float   "OverTime3",             :limit => 53, :default => 0.0
    t.float   "OverTime4",             :limit => 53, :default => 0.0
    t.decimal "OverTimeMoney"
    t.decimal "OtherAddition"
    t.string  "AdditionNote"
    t.decimal "Insurance",                           :default => 0.0
    t.decimal "PersonalIncomeTax",                   :default => 0.0
    t.decimal "TotalPaidLunch",                      :default => 0.0
    t.decimal "OtherDeduction",                      :default => 0.0
    t.string  "DeductionNote"
    t.decimal "RealSalary",                          :default => 0.0
    t.decimal "SalaryBLD",                           :default => 0.0
    t.decimal "IntimateAllowance",                   :default => 0.0
    t.integer "FamilyConditionNumber", :limit => 2
  end

  create_table "tblSalaryHistory", :primary_key => "SalaryHistoryID", :force => true do |t|
    t.integer  "EmployeeID",                   :null => false
    t.decimal  "BasicSalary",                  :null => false
    t.string   "DecisionNumber", :limit => 20
    t.datetime "ModifiedDate"
    t.string   "Note",           :limit => 50
  end

  create_table "tblShift", :primary_key => "ShiftID", :force => true do |t|
    t.string   "ShiftName",     :limit => 50,                    :null => false
    t.datetime "CheckIn"
    t.datetime "Length"
    t.datetime "BOT"
    t.datetime "EOT"
    t.datetime "LateAllowIn"
    t.datetime "EarlyAllowIn"
    t.datetime "LateAllowOut"
    t.datetime "EarlyAllowOut"
    t.string   "Description",   :limit => 50
    t.boolean  "LateShift",                   :default => false
    t.datetime "LunchTime"
    t.float    "TimeSheet",     :limit => 53
  end

  add_index "tblShift", ["ShiftName"], :name => "IX_tblShift", :unique => true

  create_table "tblShiftOver", :primary_key => "ShiftOverID", :force => true do |t|
    t.string   "ShiftName",        :limit => 50,  :null => false
    t.string   "ShiftDescription", :limit => 400
    t.datetime "TimeIn",                          :null => false
    t.datetime "TimeOut",                         :null => false
    t.datetime "LunchStart"
    t.datetime "LunchStop"
    t.datetime "DinnerStart"
    t.datetime "DinnerStop"
  end

  create_table "tblSocialInsurance", :id => false, :force => true do |t|
    t.integer "EmployeeID",                                               :null => false
    t.integer "RestDays"
    t.decimal "MoneyAllowance"
    t.integer "RestDaysApproved"
    t.string  "Note",                     :limit => 250
    t.integer "AllRestDayApprovedInYear"
    t.integer "PeriodID",                                                 :null => false
    t.integer "RegRestID"
    t.float   "InsurancePeriod",          :limit => 53
    t.integer "TotalRestInYear",                         :default => 0
    t.decimal "MoneyAllowanceApproved",                  :default => 0.0
  end

  create_table "tblSysVar", :id => false, :force => true do |t|
    t.string  "Sys_name",       :limit => 50,  :null => false
    t.string  "Descriptions",   :limit => 200
    t.string  "Sys_value",      :limit => 100, :null => false
    t.boolean "Modifyable",                    :null => false
    t.integer "CheckValueType", :limit => 2
  end

  create_table "tblTimeInTimeOut", :primary_key => "TimeID", :force => true do |t|
    t.integer  "EmployeeID", :null => false
    t.datetime "TimeIn"
    t.datetime "TimeOut"
    t.datetime "WorkingDay"
    t.integer  "ShiftID"
  end

  create_table "tblTimeSheet", :id => false, :force => true do |t|
    t.integer "Month",                                      :null => false
    t.integer "Year",                                       :null => false
    t.integer "EmployeeID",                                 :null => false
    t.integer "OverTime",   :limit => 2,                    :null => false
    t.string  "Day1",       :limit => 10
    t.string  "Day2",       :limit => 10
    t.string  "Day3",       :limit => 10
    t.string  "Day4",       :limit => 10
    t.string  "Day5",       :limit => 10
    t.string  "Day6",       :limit => 10
    t.string  "Day7",       :limit => 10
    t.string  "Day8",       :limit => 10
    t.string  "Day9",       :limit => 10
    t.string  "Day10",      :limit => 10
    t.string  "Day11",      :limit => 10
    t.string  "Day12",      :limit => 10
    t.string  "Day13",      :limit => 10
    t.string  "Day14",      :limit => 10
    t.string  "Day15",      :limit => 10
    t.string  "Day16",      :limit => 10
    t.string  "Day17",      :limit => 10
    t.string  "Day18",      :limit => 10
    t.string  "Day19",      :limit => 10
    t.string  "Day20",      :limit => 10
    t.string  "Day21",      :limit => 10
    t.string  "Day22",      :limit => 10
    t.string  "Day23",      :limit => 10
    t.string  "Day24",      :limit => 10
    t.string  "Day25",      :limit => 10
    t.string  "Day26",      :limit => 10
    t.string  "Day27",      :limit => 10
    t.string  "Day28",      :limit => 10
    t.string  "Day29",      :limit => 10
    t.string  "Day30",      :limit => 10
    t.string  "Day31",      :limit => 10
    t.float   "Total",      :limit => 53,  :default => 0.0
    t.float   "OverTime1",  :limit => 53
    t.float   "OverTime2",  :limit => 53
    t.float   "OverTime3",  :limit => 53
    t.float   "OverTime4",  :limit => 53
    t.string  "Note",       :limit => 200
  end

  create_table "tblTimeSheetChange", :id => false, :force => true do |t|
    t.integer "Year",                      :null => false
    t.integer "Month",                     :null => false
    t.string  "EmployeeID",  :limit => 50, :null => false
    t.integer "Type",        :limit => 2,  :null => false
    t.string  "DayName",     :limit => 50, :null => false
    t.string  "OldValue",    :limit => 50, :null => false
    t.string  "NewValue",    :limit => 50
    t.string  "Description", :limit => 50
  end

  create_table "tblUser", :primary_key => "UserID", :force => true do |t|
    t.string  "UserGroupID", :limit => 10
    t.string  "CardID",      :limit => 10,  :null => false
    t.string  "UserName",    :limit => 30,  :null => false
    t.string  "Password",    :limit => 30,  :null => false
    t.string  "Description", :limit => 50
    t.integer "EmployeeID"
    t.string  "Email",       :limit => 100
  end

  create_table "tblUserGroup", :id => false, :force => true do |t|
    t.string "UserGroupID",   :limit => 10, :null => false
    t.string "UserGroupName", :limit => 50, :null => false
    t.string "Description",   :limit => 50
  end

  create_table "tblUserGroupPermission", :id => false, :force => true do |t|
    t.integer "PermissionID",               :null => false
    t.string  "UserGroupID",  :limit => 10, :null => false
  end

  create_table "tempThayDoiThe", :id => false, :force => true do |t|
    t.string "ID",     :limit => 9
    t.string "CardID", :limit => 10
  end

  create_table "user_attend_projects", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "user_attend_projects", ["project_id"], :name => "index_user_attend_projects_on_project_id"
  add_index "user_attend_projects", ["user_id"], :name => "index_user_attend_projects_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "skyper"
    t.string   "email"
    t.datetime "dateofbirth"
    t.integer  "roles"
    t.integer  "status"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
