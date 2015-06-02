class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception, except: :auth

  def auth
  	if current_user
      response = Pusher[params[:channel_name]].authenticate(params[:socket_id])#, {
      #   :user_id => current_user.id, # => required
      #   :user_info => { # => optional - for example
      #     #:name => current_user.name,
      #     :email => current_user.email
      #   }
      # })
      render :json => response
    else
      render :text => "Forbidden", :status => '403'
    end
  end
end
