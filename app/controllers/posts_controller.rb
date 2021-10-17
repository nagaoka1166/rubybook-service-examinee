class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        post.save
        #post.save!にするとerrorが起きる
        redirect_to posts_url, notice: "タスク「#{post.title}」を登録しました。"
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        post = Post.find(params[:id])
        post.update!(post_params)
        redirect_to posts_url, notice: "タスク「#{post.title}」を更新しました。"
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to posts_url, notice: "タスク「#{post.title}」を削除しました。"
    end
    private
    def post_params
        params.require(:post).permit(:title, :description, :caution, :testing_field, :reward, :item, :created_at)
    end
end
