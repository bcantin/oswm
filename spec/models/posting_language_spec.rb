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

require 'spec_helper'

describe PostingLanguage do
  
  before do
    %w(C C++ Java Perl PHP Python Ruby Other N/A).each do |lang|
      Language.create(:name => lang)
    end
  end
  
  describe "posting and languages" do
    it "has a kick ass relationship" do
      p = Posting.new(:idea => 'Skynet')
      l = Language.first
      p.languages << l
      p.save
      
      p.languages.should include(l)
    end
  end
end
