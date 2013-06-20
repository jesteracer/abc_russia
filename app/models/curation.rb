class Curation < ActiveRecord::Base
  belongs_to :user
  belongs_to :person
  # attr_accessible :title, :body
end
