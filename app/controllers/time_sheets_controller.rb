class TimeSheetsController < ApplicationController
before_filter :signed_in_user
#before_filter :admin_user,     only:[:destroy,:update,:index]


def admin_user
	redirect_to(signin_path) unless current_user.admin?
end

  # GET /time_sheets
  # GET /time_sheets.json
  def index
   # @time_sheets = TimeSheet.all
    @search = TimeSheet.search(params[:search])
if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end

    @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])
          respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @time_sheets }
             format.js {render js: @search }
             end

  end


  # GET /time_sheets/1
  # GET /time_sheets/1.json
  def show
        @search = TimeSheet.search(params[:search])
        if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end
        @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])
        respond_to do |format|
                format.html {  render action: "index"}
                format.js {render js: @new_time_sheet.errors, status: :unprocessable_entity}
                format.js {render js: @time_sheets }
                format.js {render js: @search }
        end
  end



  # GET /time_sheets/1/edit
  def edit
    @search = TimeSheet.search(params[:search])
    if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end
    @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])
    @new_time_sheet = TimeSheet.find(params[:id])
    respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @new_time_sheet}
             format.js {render js: @time_sheets }
             format.js {render js: @search }
             end
  end

  # POST /time_sheets
  # POST /time_sheets.json
  def create
   @daywork= DayWork.find(params[:time_sheet][:day_work_id])

   @staff=current_user.staff
    @new_time_sheet = TimeSheet.new(year: params[:time_sheet][:year],month: params[:time_sheet][:month], day: params[:time_sheet][:day],actual: params[:time_sheet][:actual],note: params[:time_sheet][:note],status: 1)
@new_time_sheet.staff=@staff
@new_time_sheet.day_work=@daywork


 respond_to do |format|
         if @new_time_sheet.save
          @new_time_sheet=nil
          @search = TimeSheet.search(params[:search])
          if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end
          @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])
                     format.html { render action: "index"}
                     format.js {render js: @time_sheets,notice: 'Time sheet was successfully created.' }
                     format.js {render js: @search }

                else
                 @search = TimeSheet.search(params[:search])
                 if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end
                 @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])
                     format.html {  render action: "index"}
                     format.js {render js: @new_time_sheet.errors, status: :unprocessable_entity}
                     format.js {render js: @time_sheets }
                     format.js {render js: @search }
                end
         end
  end

  # PUT /time_sheets/1
  # PUT /time_sheets/1.json
  def update
 @new_time_sheet = TimeSheet.find(params[:id])
 @daywork= DayWork.find(params[:time_sheet][:day_work_id])
 @new_time_sheet.day_work=@daywork
 respond_to do |format|
         if @new_time_sheet.update_attributes(year: params[:time_sheet][:year],month: params[:time_sheet][:month], day: params[:time_sheet][:day],actual: params[:time_sheet][:actual],note: params[:time_sheet][:note],status: params[:time_sheet][:status])
          @new_time_sheet=nil
          @search = TimeSheet.search(params[:search])
          if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end
          @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])
                     format.html { render action: "index"}
                     format.js {render js: @time_sheets,notice: 'Time sheet was successfully updated.' }
                     format.js {render js: @search }
                else
                 @search = TimeSheet.search(params[:search])
                 if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end
                 @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])
                     format.html {  render action: "index"}
                     format.js {render js: @new_time_sheet.errors, status: :unprocessable_entity}
                     format.js {render js: @time_sheets }
                     format.js {render js: @search }
                end
         end




  end

  # DELETE /time_sheets/1
  # DELETE /time_sheets/1.json
  def destroy
        @time_sheet = TimeSheet.find(params[:id])
        @time_sheet.destroy
        @search = TimeSheet.search(params[:search])
        if (!current_user.admin?)
  @search= TimeSheet.where(staff_id: current_user.staff.id ).search(params[:search])
end
        @time_sheets = @search.paginate(:per_page => 30, :page => params[:page])

    respond_to do |format|
                    format.html {  render action: "index"}
                     format.js {render js: @new_time_sheet.errors, status: :unprocessable_entity}
                     format.js {render js: @time_sheets }
                     format.js {render js: @search }
    end
  end
end
