require 'spec_helper'

describe Curation do
  it {should belong_to(:user)}
  it {should belong_to(:person)}
end
