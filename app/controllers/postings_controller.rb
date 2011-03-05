class PostingsController < ApplicationController

  def index
    @postings = Posting.fresh
  end
  
  def new
    @posting = Posting.new
  end
  
  def create
    @posting = Posting.new(params[:posting])
    if @posting.save
      redirect_to postings_path, :notice => 'You have created a posting!'
    else
      render :new
    end
  end
end
