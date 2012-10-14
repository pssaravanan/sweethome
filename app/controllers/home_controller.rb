class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @homes = Home.find_all_by_home_owner_id(current_user.id)
  end
end
