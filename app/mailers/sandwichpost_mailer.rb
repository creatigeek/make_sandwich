class SandwichpostMailer < ActionMailer::Base
  include SandwichpostsHelper
  default from: "hirocayce@gmail.com"
  
  def sandwichrequest_email(user, sandwichpost)
    @user = user
    @sandwichpost = sandwichpost
    @quote = fetch_quote
    mail(to: 'vwallis@gmail.com', subject: 'Plz to have a sandwich kthx (: <3')
  end
    
end
