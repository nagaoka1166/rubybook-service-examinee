class PostsController < ApplicationController
    before_action :researcher_confirm, only: [:new, :create, :edit, :destroy]
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user = current_user
        if @post.save
        redirect_to posts_path, notice: "タスク「#{@post.title}」を登録しました。"
        else
            render :new
        end
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

    def  researcher_confirm
        if current_user.content_type.to_i != 2
            redirect_to posts_path(current_user)
        end
    end
end
