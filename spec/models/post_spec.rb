require 'spec_helper'

describe Post, 'associations' do
  it {should have_many(:connections)}
  it {should have_many(:people).through(:connections)}
  it {should accept_nested_attributes_for(:connections)}
end

describe Post, 'validations' do
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:body)}
end
