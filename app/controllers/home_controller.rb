class HomeController < ApplicationController

  def index
    @fresh_posts = Posting.fresh.count
  end

end
