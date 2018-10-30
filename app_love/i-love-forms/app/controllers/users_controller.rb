class UsersController < ApplicationController
   def index
    @users = User.all
     end


     def create
       puts params
       username = params[:username]
       email = params[:email]
       bio = params[:bio]
       
       @user = User.create!(username: username, email: email, bio: bio)
       @user.save
     end
end


