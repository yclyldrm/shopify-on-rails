class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  WillPaginate.per_page = 5

  def seed
    Rails.application.load_seed
    redirect_to root_path
  end
end
