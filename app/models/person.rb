class Person < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  # attr_accessible :about, :accounts, :accused_for, :birth_date, :contacts, :fio
  has_many :curations
  has_many :photos

  def curator?(user)
    curations.pluck(:user_id).include?(user.id)
  end
end
