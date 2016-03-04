class User < ActiveRecord::Base
has_many :green_kub_boxes, foreign_key: 'green_kub_box_id'
 # def self.from_omniauth(auth)
 #   where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  #    user.provider = auth.provider
   #   user.uid = auth.uid
    #  user.name = auth.info.name
     # user.oauth_token = auth.credentials.token
      #user.oauth_expires_at = Time.at(auth.credentials.expires_at)
 #     user.save!
  #  end
  #end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.save
    end
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
