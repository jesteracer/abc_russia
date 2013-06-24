class Photo < ActiveRecord::Base
  belongs_to :person

  # attr_accessible :attachment, :main
  has_attached_file :attachment,
    styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  # attr_accessible :title, :body

  default_scope order("main DESC")
  scope :thumbs, where(main: false)
  scope :main, where(main: true)
  before_save do
    self.person.photos.main.update_all(main: false)
  end
end




