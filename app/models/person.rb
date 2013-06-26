class Person < ActiveRecord::Base
  has_many :curations, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :transactions, dependent: :destroy
  has_many :connections, dependent: :destroy
  has_many :posts, through: :connections

  def curator?(user)
    curations.pluck(:user_id).include?(user.id)
  end

  def main_photo
    if photos.any?
      photos.main.first
    else
      nil
    end
  end
end
