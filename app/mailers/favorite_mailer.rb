class FavoriteMailer < ApplicationMailer
  default from: "btkunisch_@hotmail.com"
  
  def new_comment(user, post, comment)
 
    headers["Message-ID"] = "<comments/#{comment.id}@lit-plateau-9283.git>"
    headers["In-Reply-To"] = "<post/#{post.id}@lit-plateau-9283.git>"
    headers["References"] = "<post/#{post.id}@lit-plateau-9283.git>"
 
    @user = user
    @post = post
    @comment = comment
 
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
  
  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@lit-plateau-9283.git>"
    headers["In-Reply-To"] = "<post/#{post.id}@lit-plateau-9283.git>"
    headers["References"] = "<post/#{post.id}@lit-plateau-9283.git>"
    
    @post = post
    
    mail(to: post.user.email, subject: "You're following, #{post.title}!")
  end 
end
