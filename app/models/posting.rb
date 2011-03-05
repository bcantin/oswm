# == Schema Information
#
# Table name: postings
#
#  id           :integer         not null, primary key
#  display_name :string(255)
#  idea         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Posting < ActiveRecord::Base
      
  validates :idea, :presence => true
  
  has_many :posting_languages
  has_many :languages, :through => :posting_languages
  
  def self.fresh
    where('created_at >= ?', 30.minutes.ago).order('created_at')
  end
  
  def self.stale
    where('created_at < ?', 30.minutes.ago)
  end
  
  def name
    display_name.present? ? display_name : 'Somebody'
  end
  
end
