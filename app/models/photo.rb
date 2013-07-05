class Photo < ActiveRecord::Base
  belongs_to :person

  has_attached_file :attachment,
    styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"

  default_scope order("main DESC")
  scope :thumbs, where(main: false)
  scope :main, where(main: true)

  before_save do |photo|
    self.person.photos.main.update_all(main: false) if photo.main?
  end
end




