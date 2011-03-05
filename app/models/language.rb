# == Schema Information
#
# Table name: languages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Language < ActiveRecord::Base
  has_many :posting_languages
  has_many :postings, :through => :posting_languages
  
  validates :name, :uniqueness => true
end
