class EntriesController < ApplicationController
    before_action :entries_params, only: [:create]

    def new
        @entry = Entry.new
        end
    def create
        @entry = Entry.new(entries_params)
        @user = current_user
        @entry.user_id = current_user.id
        @post = @entry.post

        if @entry.save!
            if @entry.post.recruitment_period <  Date.today
                redirect_to posts_path
                flash[:info]= "「#{@post.title}」の募集期間が過ぎています"
                return
            end
            ContactMailer.entries_email(@post, @user).deliver_now
            ContactMailer.request_email(@post, @user).deliver_now
            flash[:info] = "「#{@post.title}」への参加手続きが完了いたしました"
            redirect_to posts_path
        else
            render :new
        end
    end
    private
    def entries_params
        params.require(:entry).permit(:age, :phone, :post_id, :recruitment_period)
    end

    # def post_params
    #     params.permit(:age, :phone, :post_id)
    # end

    # def redirect_post
    #     redirect_to posts_user_path unless post.is_active == true
    #   end
end
