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
  
  has_many :posting_languages
  has_many :languages, :through => :posting_languages
  
  after_save :set_n_a_language
  
  validates :idea, :presence => true
  validates :email, :presence => true
  
  def self.fresh
    where('created_at >= ?', 30.minutes.ago).order('created_at')
  end
  
  def self.stale
    where('created_at < ?', 30.minutes.ago)
  end
  
  def name
    display_name.present? ? display_name : 'Somebody'
  end
  
  private
    def set_n_a_language
      return true if languages.present?
      unless l = Language.where(:name => 'N/A').first
        l = Language.create(:name => 'N/A')
      end
      languages << l
    end
    
end
