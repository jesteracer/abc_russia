class Post < ActiveRecord::Base
  # attr_accessible :body, :name
  has_many :connections
  has_many :people, through: :connections
  accepts_nested_attributes_for :connections

  def short_body
    body.split("[-more-]").first
  end
end
