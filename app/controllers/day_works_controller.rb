class DayWorksController < ApplicationController



def index
   # @new_department=params[:new_department]
    @search = DayWork.search(params[:search])
    @day_works = @search.paginate(:per_page => 10, :page => params[:page])

          respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @day_works }
             format.js {render js: @search }
             end
end

  def new
  @department = DayWork.new
  end




    def edit
   @search = DayWork.search(params[:search])
    @day_works = @search.paginate(:per_page => 10, :page => params[:page])
    @new_day_work = DayWork.find(params[:id])
    respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @new_day_work}
             format.js {render js: @day_works }
             format.js {render js: @search }
             end

  end


 def show
         @search = DayWork.search(params[:search])
        @day_works = @search.paginate(:per_page => 10, :page => params[:page])
 respond_to do |format|
        format.html {  render action: "index"}
        format.js {render js: @new_day_work.errors, status: :unprocessable_entity}
        format.js {render js: @day_works }
        format.js {render js: @search }
        end
  end


  def update

 @new_day_work= DayWork.find(params[:id])
 respond_to do |format|
         if @new_day_work..update_attributes(params[:day_work])
          @new_day_work=nil
          @search = DayWork.search(params[:search])
          @day_works = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html { render action: "index"}
                     format.js {render js: @day_works }
                     format.js {render js: @search }
                else
                 @search = DayWork.search(params[:search])
                 @day_works = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html {  render action: "index"}
                     format.js {render js: @new_day_work.errors, status: :unprocessable_entity}
                     format.js {render js: @day_works }
                     format.js {render js: @search }
                end
         end
  end


def create

    @new_day_work = DayWork.new(params[:day_work])
    respond_to do |format|
       if @new_day_work.save
           @new_day_work=nil
           @search = DayWork.search(params[:search])
           @day_works = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html { render action: "index", messages: "Created successful" }
                     format.js {render js: @day_works }
                     format.js {render js: @search }
            else
                @search = DayWork.search(params[:search])
                @day_works = @search.paginate(:per_page => 10, :page => params[:page])
             format.html { render action: "index"}
             format.js {render js: @new_day_work.errors, status: :unprocessable_entity}
             format.js {render js: @day_works }
             format.js {render js: @search }


    end
        end
end

 end
