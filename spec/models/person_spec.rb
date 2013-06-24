require 'spec_helper'

describe Person do
  it {should have_many(:curations)}
  it {should have_many(:photos)}
end
