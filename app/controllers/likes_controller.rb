class LikesController < ApplicationController
    def create
        @post = Post.find(params[:id])
        Like.create(user_id: current_user.id, post_id: params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        Like.find_by(user_id: current_user.id, post_id: params[:id]).destroy
    end

    private

    def post_params
        @post = Post.find(id: params[:post_id])
    end
end
