class FavoriteMailer < ApplicationMailer
  default from: "btkunisch_@hotmail.com"
  
  def new_comment(user, post, comment)
 
    headers["Message-ID"] = "<comments/#{comment.id}@lit-plateau-9283.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@lit-plateau-9283.example>"
    headers["References"] = "<post/#{post.id}@lit-plateau-9283.example>"
 
    @user = user
    @post = post
    @comment = comment
 
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
