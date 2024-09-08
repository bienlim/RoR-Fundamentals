class FriendshipController < ApplicationController
  def add
    Friendship.create(user_id: session[:user_id],friend_id: params[:id])
    redirect_to "/users/#{params[:id]}"
  end

  def remove
    User.find(session[:user_id]).friendships.find_by("user_id = ? OR friend_id = ?", params[:id], params[:id]).destroy
    redirect_to "/users/index"
  end
end
