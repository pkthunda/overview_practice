class DevelopersController < ApplicationController
  before_action :authenticate_user

  def index
    @developers = Developer.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
