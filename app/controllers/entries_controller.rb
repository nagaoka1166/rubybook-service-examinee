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
        p "========================================="
        p @entry.inspect
        p @user.inspect
        p @post
        p current_user
        p entries_params.inspect
        # @post = current_user.post_id
        # byebug
        # @entry = current_user.Entry.new(entries_params)x

        if @entry.save!
            ContactMailer.entries_email(@post, @user).deliver_now
            ContactMailer.request_email(@post, @user).deliver_now
            redirect_to @post, notice: "「#{@post.title}」への参加手続きが完了いたしました"
        else
            render :new
        end
    end
    private
    def entries_params
        params.require(:entry).permit(:age, :phone, :post_id)
    end

    # def post_params
    #     params.require(:post).permit(:title, :description, :caution, :testing_field, :reward, :item, :created_at, :id, :is_active, :experment_period, :recruitment_period)
    # end
end
