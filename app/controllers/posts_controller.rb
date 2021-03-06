class PostsController < ApplicationController
    before_action :researcher_confirm, only: [:new, :create, :edit, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :show]

    def index
        @q =  Post.all.order(created_at: :desc).all.ransack(params[:q])
        @posts = @q.result(distinct: true).page(params[:page]).per(10)
        @like = Like.new
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user = current_user
        if @post.save
        flash[:info] = "登録が完了しました。"
        redirect_to posts_path
        else
            render :new
        end

    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
        if @post.user == current_user
            render "edit"
        else
            redirect_to posts_path
        end
    end

    def update
        @post = Post.find(params[:id])
        if @post.user == current_user
            @post.update!(post_params)
            flash[:info] = "求人「#{@post.title}」を更新しました。"
            redirect_to posts_path
            # redirect_to posts_url, notice: "タスク「#{@post.title}」を更新しました。"
        else
            redirect_to posts_path
        end
    end
# FIX: destroyが動かなくなったので修正する
    def destroy
        post = Post.find(params[:id])
        if post.user == current_user
           post.destroy
        # flash[:alert] = "求人「#{@post.title}」を削除しました。"
        # redirect_to posts_path
        redirect_to posts_url, notice: "タスク「#{post.title}」を削除しました。"
        else
            redirect_to posts_path
        end
    end
    private
    def post_params
        params.require(:post).permit(:title, :description, :caution, :restriction, :testing_field, :reward, :item, :created_at, :id, :is_active, :experment_period, :recruitment_period)
    end
    def  researcher_confirm
        if current_user.content_type.to_i != 2
            redirect_to posts_path(current_user)
        end
    end
end
