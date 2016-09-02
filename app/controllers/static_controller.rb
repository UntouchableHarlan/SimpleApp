class StaticController < ApplicationController
  def home
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed
    @microposts = current_user.microposts.all
  end

  def help
  end

  def about

  end

  def contact

  end
end
