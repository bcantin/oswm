class PostingsController < ApplicationController

  def index
    @postings = Posting.fresh
  end
  
  def new
    @posting = Posting.new
    if current_user
      @posting.email = current_user.email
      @posting.display_name = current_user.name
    end
  end
  
  def create
    @posting = Posting.new(params[:posting])
    @message = @posting.idea
    if @posting.save
      response = tweet("#{@posting.idea}")
      redirect_to postings_path, :notice => 'You have created a posting!'
    else
      render :new
    end
  end
  
  def contact
    @posting = Posting.find(params[:id])
    current_user ? params[:your_email] ||= current_user.email : nil
    if request.post? && params[:your_email]
      Notifier.contact(@posting, params[:your_email]).deliver
      redirect_to postings_path, :notice => 'Your contact information has been sent'
    end
  end
  
end
