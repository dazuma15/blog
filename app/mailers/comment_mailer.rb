class CommentMailer < ActionMailer::Base
  def comments_notification(comment, post)
    @comment = comment
    @post = post
    mail :to => Admin.pluck(:email), :from => "notifications@paisleythroughalens.com", :subject => "New Comment Made"
  end
end

