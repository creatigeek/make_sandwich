class SandwichpostsController < ApplicationController
  before_filter :signed_in_user

  def create
    @sandwichpost = current_user.sandwichposts.build(params[:sandwichpost])
    if @sandwichpost.save
      SandwichpostMailer.sandwichrequest_email(current_user, @sandwichpost).deliver
      flash[:success] = "Make Sandwich Request and Inspiration Sent!"
      redirect_to root_url
    else
      flash.now[:error] = "Aww :/ Request and Universal Validaton of Awesomeness not sent."
      render 'static_pages/home'
    end
  end

  def destroy
  end
end