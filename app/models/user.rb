class User < ActiveRecord::Base
  include Clearance::User
  has_many :curations

  def de_curate!
    update_attribute("curator", false)
    curations.destroy_all
  end

  def admin!
    update_attribute("admin", true)
  end
end
