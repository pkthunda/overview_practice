class DevelopersController < ApplicationController
  before_action :check_logged_in
  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  def index
    @developers = Developer.all
    @developer = Developer.new
    # @projects = Project.all
    # @time_entries = TimeEntry.all
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def new
    @developer = Developer.new
    # @project = Project.find(params[:project_id])
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def create
    @developer = Developer.new(developer_params)
      if @developer.save
        redirect_to developers_path, notice: 'Developer was successfully created.'
      else
       render :new
    end
  end

  def update
    if @developer.update(developer_params)
      redirect_to developers_path, notice: 'Developer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @developer.destroy
    redirect_to developers_url, notice: 'Developer was successfully destroyed.'
  end

  private

    def set_developer
      @developer = Developer.find(params[:id])
    end

    def developer_params
      params.require(:developer).permit(:developer_id, :name, :email, :password)
    end

    def check_logged_in
    if session[:developer_id].blank?
      flash[:notice] = "I told you to back off, bro."
      redirect_to login_login_path
    end
  end
end
