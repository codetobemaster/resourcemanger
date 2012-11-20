class PositionsController < ApplicationController


def index
   # @new_department=params[:new_department]
    @search = Position.search(params[:search])
    @positions = @search.paginate(:per_page => 10, :page => params[:page])


       # or @search.relation to lazy load in view
      respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @positions }
             format.js {render js: @search }

             end
end

  def new
  @position = Position.new
  end




    def edit
   @search = Position.search(params[:search])
    @positions = @search.paginate(:per_page => 10, :page => params[:page])
    @new_position = Position.find(params[:id])
    respond_to do |format|
             format.html { render action: "index"}
             format.js {render js: @new_position}
             format.js {render js: @positions }
             format.js {render js: @search }

             end

  end

  def update

 @position = Position.find(params[:id])
 respond_to do |format|
         if @position.update_attributes(params[:position])
          @search = Position.search(params[:search])
          @positions = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html { render action: "index"}
                     format.js {render js: @positions }
                     format.js {render js: @search }
                else
                 @search = Position.search(params[:search])
                 @positions = @search.paginate(:per_page => 10, :page => params[:page])
                     format.html {  render action: "index"}
                     format.js {render js: @new_position.errors, status: :unprocessable_entity}
                     format.js {render js: @positions }
                     format.js {render js: @search }
                end
         end
  end

 def show
 respond_to do |format|
        @search = Position.search(params[:search])
        @positions = @search.paginate(:per_page => 10, :page => params[:page])
        format.html {  render action: "index"}
        format.js {render js: @new_position.errors, status: :unprocessable_entity}
        format.js {render js: @positions }
        format.js {render js: @search }
        end
  end

def create
    @new_position = Position.new(params[:position])
    respond_to do |format|
       if @new_position.save
                        @search = Position.search(params[:search])
                        @positions = @search.paginate(:per_page => 10, :page => params[:page])
                        format.html { render action: "index", messages: "Created successful" }
                        format.js {render js: @positions }
                        format.js {render js: @search }
            else
                @search = Position.search(params[:search])
                @positions = @search.paginate(:per_page => 10, :page => params[:page])
                format.html { render action: "index"}
                format.js {render js: @new_position.errors, status: :unprocessable_entity}
                format.js {render js: @positions }
                format.js {render js: @search }


    end
        end
end


 end
