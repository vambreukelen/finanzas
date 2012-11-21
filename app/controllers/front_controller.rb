class FrontController < ApplicationController

  hobo_controller

  def index
    @dif = 1000

  end

  def summary
    if !current_user.administrator?
      redirect_to user_login_path
    end
  end

  def search
    if params[:query]
      site_search(params[:query])
    end
  end



end
