class UserAttendProjectsController < ApplicationController
  # GET /user_attend_projects
  # GET /user_attend_projects.json
  def index
    @user_attend_projects = UserAttendProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_attend_projects }
    end
  end

  # GET /user_attend_projects/1
  # GET /user_attend_projects/1.json
  def show
    @user_attend_project = UserAttendProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_attend_project }
    end
  end



  # GET /user_attend_projects/new
  # GET /user_attend_projects/new.json
  def new
    @user_attend_project = UserAttendProject.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_attend_project }
    end
  end

  # GET /user_attend_projects/1/edit
  def edit
    @user_attend_project = UserAttendProject.find(params[:id])
  end

  # POST /user_attend_projects
  # POST /user_attend_projects.json
  def create
    @user_attend_project = UserAttendProject.new(params[:user_attend_project])

    respond_to do |format|
      if @user_attend_project.save
        format.html { redirect_to @user_attend_project, notice: 'User attend project was successfully created.' }
        format.json { render json: @user_attend_project, status: :created, location: @user_attend_project }
      else
        format.html { render action: "new" }
        format.json { render json: @user_attend_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_attend_projects/1
  # PUT /user_attend_projects/1.json
  def update
    @user_attend_project = UserAttendProject.find(params[:id])

    respond_to do |format|
      if @user_attend_project.update_attributes(params[:user_attend_project])
        format.html { redirect_to @user_attend_project, notice: 'User attend project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_attend_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_attend_projects/1
  # DELETE /user_attend_projects/1.json
  def destroy
    @user_attend_project = UserAttendProject.find(params[:id])
    @user_attend_project.destroy

    respond_to do |format|
      format.html { redirect_to user_attend_projects_url }
      format.json { head :no_content }
    end
  end
end
