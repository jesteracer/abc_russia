class Post < ActiveRecord::Base
  # attr_accessible :body, :name
  paginates_per 10
  has_many :connections
  has_many :people, through: :connections
  accepts_nested_attributes_for :connections

  def short_body
    body.split("[-more-]").first
  end

  def self.on_person(id)
    self.includes(:connections).where("connections.person_id" => id)
  end

  scope :by_date, order('posts.created_at DESC')
end
