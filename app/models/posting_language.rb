# == Schema Information
#
# Table name: posting_languages
#
#  id          :integer         not null, primary key
#  posting_id  :integer
#  language_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class PostingLanguage < ActiveRecord::Base

  belongs_to :posting
  belongs_to :language
end
