class Person < ActiveRecord::Base
  has_many :curations, dependent: :destroy
  has_many :users, through: :curations
  accepts_nested_attributes_for :curations

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

  def last_posts(page = nil)
    @last_posts ||= self.posts.by_date.page(page.to_i)
  end

  def self.statuses_count
    group(:status).count
  end

end
