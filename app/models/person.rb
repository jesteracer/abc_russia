class Person < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  # attr_accessible :about, :accounts, :accused_for, :birth_date, :contacts, :fio
  has_many :curations
  has_many :photos
  has_many :transactions
  has_many :connections
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
