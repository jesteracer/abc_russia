class Transaction < ActiveRecord::Base
  belongs_to :person
  # attr_accessible :about, :amount, :direction
  validates :direction, :inclusion => %w(in out)
  scope :in, where(direction: "in")
  scope :out, where(direction: "out")

  def calculate_curren_account
    on_person = self.person
    account = on_person.transactions.in.sum('amount') - on_person.transactions.out.sum('amount')
    on_person.update_attribute('current_account', account)
  end

  after_save :calculate_curren_account
  after_destroy :calculate_curren_account
end
