class Notifier < ActionMailer::Base
  default :from => "donotreply@oswm.com"
  
  def contact(posting, contactee)
     @posting   = posting
     @contactee = contactee
     mail(:to      => @posting.email,
          :subject => "Open soure it with me!  #{@contactee} wants to work on #{@posting.idea}")
   end
end
