class SandwichpostMailer < ActionMailer::Base
  include SandwichpostsHelper
  default from: "hirocayce@gmail.com"
  
  def sandwichrequest_email(user, sandwichpost)
    @user = user
    @sandwichpost = sandwichpost
    mail(to: 'vwallis@gmail.com', subject: 'Plz to make a sandwich kthx (: <3')
  end
    
end
