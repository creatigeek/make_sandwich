class SandwichpostMailer < ActionMailer::Base
  default to: "hirocayce@gmail.com"
  
  def sandwichrequest_email(user, sandwichpost)
    @user = user
    @sandwichpost = sandwichpost
    mail(subject: 'Plz to have a sandwich kthx (: <3')
  end
    
end
