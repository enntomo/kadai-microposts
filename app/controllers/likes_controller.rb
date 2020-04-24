class LikesController < ApplicationController
   before_action :require_user_logged_in
  def create
     micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'いいねした。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'いいねを解除した。'
    redirect_to root_url
  end
end