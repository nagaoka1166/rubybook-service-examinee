class ContactMailer < ApplicationMailer
    # default from: "送信元のメールアドレス"

  def entries_email(user)
      @user = user
      @entry = Entry.find 49
      mail to: @user,
        subject: "ユーザー登録が完了しました"
  end

  private
    def params
        params.permit(:age, :phone, :id)
    end
end
