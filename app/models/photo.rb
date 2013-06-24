class Photo < ActiveRecord::Base
  belongs_to :person

  attr_accessible :attachment
  has_attached_file :attachment,
    styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  # attr_accessible :title, :body

  default_scope order("main DESC")
  scope :thumbs, where(main: false)
end


