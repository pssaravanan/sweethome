class HomesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @homes = Home.find_all_by_home_owner_id(current_user.id)
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.create(params[:home].merge!(:home_owner => HomeOwner.find(current_user.id)))
    redirect_to homes_path
  end

  def edit
    #load and authorise will load home
    render :new
  end
end
