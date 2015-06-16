class StaticPagesController < ApplicationController
  def home
    if logged_in?
  	 @entry = current_user.entries.build if logged_in?
  	 @feed_items = current_user.feed.paginate(per_page: 5, page: params[:page])
     @feed1_items = current_user.feed1.paginate(per_page: 5, page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
