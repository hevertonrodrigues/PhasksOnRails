class PagesController < ApplicationController
  def home
		redirect_to new_admin_session_path unless admin_signed_in?
  end
end
