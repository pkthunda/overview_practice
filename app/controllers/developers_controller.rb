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
  end

  # def edit_me
  #   @developer = current_user
  # end

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


  ## this went in body in application.html.erb for only deleting/editing user by id ##
  # <br><%= link_to "Destroy my account", developers_destroy_my_account_path %></br>
  # <br><%= link_to 'Edit my account', developers_edit_me_path %></br>

  # def destroy_my_account
  #   @developer = current_user
  #   @developer.destroy
  #   session[:developer_id] = nil
  #   redirect_to login_login_path
  # end

  private

    def set_developer
      @developer = Developer.find(params[:id])
    end

    def developer_params
      params.require(:developer).permit(:name, :email, :password)
    end

    def check_logged_in
    if session[:developer_id].blank?
      flash[:notice] = "I told you to back off, bro."
      redirect_to login_login_path
    end
  end
end
