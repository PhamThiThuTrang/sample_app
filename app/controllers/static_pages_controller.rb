class StaticPagesController < ApplicationController
  def home
    if logged_in?
  	 @entry = current_user.entries.build if logged_in?
  	 @feed_items = current_user.feed.paginate(page: params[:page])
     @feed1_items = current_user.feed1.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
