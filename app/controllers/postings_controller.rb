class PostingsController < ApplicationController

  def index
    @postings = Posting.fresh
  end
  
  def new
    @posting = Posting.new
  end
  
  def create
    render :text => params.inspect
  end
end
