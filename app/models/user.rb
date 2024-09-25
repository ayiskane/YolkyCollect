class User < ApplicationRecord
  devise :database_authenticatable, :registerable, 
          :rememberable, :validatable,
          :omniauthable, omniauth_providers: [:discord]

  def self.set_data_from_omniauth(auth)
    user = find_or_create_by(provider: auth.provider, uid: auth.uid) do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.username = auth.info.name
      user.image = auth.info.image
    end

    user.save if user.new_record?
    return user
  end
end
