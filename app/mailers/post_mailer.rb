class PostMailer < ApplicationMailer

  def picture_mail(picture)
    @picture = picture
    @user_email = @picture.user.email
    mail to: @user_email, subject: "投稿完了のお知らせ"
  end

end
