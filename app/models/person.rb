class Person < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  # attr_accessible :about, :accounts, :accused_for, :birth_date, :contacts, :fio

end
