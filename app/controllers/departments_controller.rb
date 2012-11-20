class DepartmentsController < ApplicationController



def index
   # @new_department=params[:new_department]
    @search = Department.search(params[:search])
    @departments = @search.paginate(:per_page => 10, :page => params[:page])

          respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @departments }
             format.js {render js: @search }

             end


end

  def new
  @department = Department.new
  end




    def edit
   @search = Department.search(params[:search])
    @departments = @search.paginate(:per_page => 10, :page => params[:page])
    @new_department = Department.find(params[:id])
    respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @new_department}
             format.js {render js: @departments }
             format.js {render js: @search }
             end

  end


 def show
         @search = Department.search(params[:search])
        @departments = @search.paginate(:per_page => 10, :page => params[:page])
 respond_to do |format|
        format.html {  render action: "index"}
        format.js {render js: @new_department.errors, status: :unprocessable_entity}
        format.js {render js: @departments }
        format.js {render js: @search }
        end
  end


  def update

 @department = Department.find(params[:id])
 respond_to do |format|
         if @department.update_attributes(params[:department])
          @search = Department.search(params[:search])
          @departments = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html { render action: "index"}
                     format.js {render js: @departments }
                     format.js {render js: @search }
                else
                 @search = Department.search(params[:search])
                 @departments = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html {  render action: "index"}
                     format.js {render js: @new_department.errors, status: :unprocessable_entity}
                     format.js {render js: @departments }
                     format.js {render js: @search }
                end
         end
  end


def create

    @new_department = Department.new(params[:department])
    respond_to do |format|
       if @new_department.save
           @search = Department.search(params[:search])
           @departments = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html { render action: "index", messages: "Created successful" }
                     format.js {render js: @departments }
                     format.js {render js: @search }
            else
                @search = Department.search(params[:search])
                @departments = @search.paginate(:per_page => 10, :page => params[:page])
             format.html { render action: "index"}
             format.js {render js: @new_department.errors, status: :unprocessable_entity}
             format.js {render js: @departments }
             format.js {render js: @search }


    end
        end
end

 def destroy
     respond_to do |format|
       if Department.find(params[:id]).destroy
               @search = Department.search(params[:search])
           @departments = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html { render action: "index", messages: "Deleted successful" }
                     format.js {render js: @departments }
                     format.js {render js: @search }
          end
  end


 end
