class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_filter :authenticate_admin!
	before_action :create_menu





	def create_menu
    @data_tables = ActiveRecord::Base.connection.tables
	end



end
