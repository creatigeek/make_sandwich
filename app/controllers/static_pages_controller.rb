class StaticPagesController < ApplicationController
  def home
    @sandwichpost = current_user.sandwichposts.build if signed_in?
  end

  def help
  end
  
  def about
  end
end
