class EntriesController < ApplicationController
    before_action :entries_params, only: [:create]
    def new
        @entry = Entry.new
    end
    def create
        @entry = Entry.new(entries_params)
        @entry = current_user
        # byebug
        # @entry = current_user.Entry.new(entries_params)

        if @entry.save
            ContactMailer.entries_email(@entry).delivery_now
            redirect_to @post, notice: "「@post.name」への参加手続きが完了いたしました"
        else
            render :new
        end
    end
    private
    def entries_params
        params.permit(:age, :phone, :entry_id)
    end
end
