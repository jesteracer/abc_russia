require 'spec_helper'

describe Post do
  it {should have_many(:connections)}
  it {should have_many(:people)}
end
