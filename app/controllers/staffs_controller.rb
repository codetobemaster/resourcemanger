class StaffsController < ApplicationController
  def index

   employee_name= (params[:EmployeeName].nil? || params[:EmployeeName].blank?) ? '' : params[:EmployeeName]
#department_id=params[:department_id]# (params[:department_id].nil? || params[:department_id].blank?) ? " " :
depa= (params[:department_id].nil? || params[:department_id].blank?) ? '' : params[:department_id]
select= (params[:select].nil? || params[:select].blank?) ? '' : params[:select]
wokingdate= (params[:StartDate].nil? || params[:StartDate].blank?) ? '' : params[:StartDate]
contracted= (params[:HaveContracted].nil? || params[:HaveContracted].blank?) ? '' : params[:HaveContracted]

  @staffs = Staff.search(employee_name,depa,select,wokingdate,contracted).order(:EmployeeID).reverse_order.paginate(:per_page => 30, :page => params[:page])

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
             format.html { render action: "index"}
             format.js {render js: @new_staff.errors, status: :unprocessable_entity}
      end
    end
  end


  def create
    @new_staff = Staff.new(params[:staff])
  @staffs = Staff.search('','','new','','' ).order(:EmployeeID).reverse_order.paginate(:per_page => 30, :page => params[:page])
    respond_to do |format|
       if @new_staff.save
	 format.html { redirect_to staffs_url(select: @new_staff.id), success: 'Staff was Insert successfully.' }
        format.js {head :no_content}
            else
             format.html { render action: "index"}
             format.js {render js: @new_staff.errors, status: :unprocessable_entity}
             format.js {render js: @staffs }

    end
        end


  end



end 
