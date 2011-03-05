# == Schema Information
#
# Table name: postings
#
#  id           :integer         not null, primary key
#  display_name :string(255)
#  body         :string(255)
#  languages    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Posting < ActiveRecord::Base
  
  LANGUAGES = ['Ruby', 'Python', 'Perl', 'Java', 'PHP', 'C', 'C++']
  
  validates :body, :presence => true
  
  def self.fresh
    where('created_at >= ?', 30.minutes.ago).order('created_at')
  end
  
  def self.stale
    where('created_at < ?', 30.minutes.ago)
  end
end
