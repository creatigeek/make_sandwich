class SandwichpostMailer < ActionMailer::Base
  default from: "hirocayce@gmail.com"
  
  def sandwichrequest_email(user, sandwichpost)
    @user = user
    @sandwichpost = sandwichpost
    mail(to: 'vwallis@gmail.com', subject: 'Plz to have a sandwich kthx (: <3')
  end
    
end
