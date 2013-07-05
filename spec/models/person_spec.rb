require 'spec_helper'

describe Person, 'associations' do
  it {should have_many(:curations)}
  it {should have_many(:users).through(:curations)}
  it {should have_many(:photos)}
  it {should have_many(:transactions)}
  it {should have_many(:connections)}
  it {should have_many(:posts).through(:connections)}
  it {should accept_nested_attributes_for(:curations)}
end

describe Person, 'validations' do
  it {should validate_presence_of(:fio)}
end
