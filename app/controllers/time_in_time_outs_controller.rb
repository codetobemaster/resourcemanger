class TimeInTimeOutsController < ApplicationController


 def index

 working_day= (params[:working_day].nil? || params[:working_day].blank?) ? '' : params[:working_day]
#department_id=params[:department_id]# (params[:department_id].nil? || params[:department_id].blank?) ? " " :
depa=params[:department_id]
  @time_in_time_outs = TimeInTimeOut.search(working_day,depa).paginate(:per_page => 30, :page => params[:page])

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @time_in_time_outs }
  end

end

def monthly_report
    department_id= (params[:department_id].nil? || params[:department_id] .blank?) ? 0: params[:department_id].to_i

    year= (params[:year].nil? || params[:year].blank?) ? Date.today.year : params[:year].to_i
    month= (params[:month].nil? || params[:month].blank?) ? Date.today.month : params[:month].to_i

    @time_in_time_outs = TimeInTimeOut.report_month(department_id,year,month)
    if(department_id!=0)
         @staffs=Staff.where(DepartmentID: department_id.to_i)
    else
         @staffs=Staff.all
    end

    respond_to do |format|
    format.html # monthly_report.html.erb
    format.json { render json: @month }
  end

end



  def edit
  @time_in_time_out=TimeInTimeOut.find(params[:id])
  end

    def update
    @time_in_time_out = TimeInTimeOut.find(params[:id])
    if @time_in_time_out.update_attributes(params[:time_in_time_out])
      # Handle a successful update.
      flash[:success] = "Time Card updated"

    redirect_to time_in_time_outs_url
    else
    render 'edit'
    end
   end


end
