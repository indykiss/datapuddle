class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
        else
            redirect_to signin_path
        end
    end
    
    def create_from_omniauth
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
        end
        session[:donor_id] = @donor.id
        render 'static_pages/home'
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end

    private
 
    def auth
      request.env['omniauth.auth']
    end

end