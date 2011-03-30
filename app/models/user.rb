# == Schema Information
#
# Table name: users
#
#  id          :integer         not null, primary key
#  provider    :string(255)
#  uid         :string(255)
#  name        :string(255)
#  email       :string(255)
#  gravatar_id :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class User < ActiveRecord::Base

  EMAIL_IS_VALID = /^[^@]+?@[^@]+?$/i

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider    = auth["provider"]
      user.uid         = auth["uid"].to_s
      user.name        = auth["user_info"]["name"]
      user.email       = auth["user_info"]["email"]
      user.gravatar_id = auth["extra"]["user_hash"]["gravatar_id"]
    end
  end

end
