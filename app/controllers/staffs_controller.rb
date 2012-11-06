class StaffsController < ApplicationController
  def index

   employee_id= (params[:EmployeeID].nil? || params[:EmployeeID].blank?) ? '' : params[:EmployeeID]
#department_id=params[:department_id]# (params[:department_id].nil? || params[:department_id].blank?) ? " " :
depa=params[:DepartmentID]
select=params[:select]
  @staffs = Staff.search(employee_id,depa,select).paginate(:per_page => 30, :page => params[:page])


    respond_to do |format|
      format.html # index.html.erb
      format.js {render js: @staffs }
    end
  end

    def edit
    @staff = Staff.find(params[:id])
  end

  def update
    @staff = Staff.find(params[:id])

    respond_to do |format|
      if @staff.update_attributes(params[:staff])
        format.html { redirect_to staffs_url(select: @staff.id), notice: 'Staff was successfully updated.' }
        format.js {head :no_content}
        #format.json { head :no_content }
      else
        format.html { redirect_to staffs_url(select: @staff.id), notice: 'Staff was not  updated.' }
        format.js { render js: @staff.errors, status: :unprocessable_entity }
        #format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end


end 
