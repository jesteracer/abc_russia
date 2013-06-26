class Connection < ActiveRecord::Base
  belongs_to :post
  belongs_to :person
  # attr_accessible :title, :body
end
