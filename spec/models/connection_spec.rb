require 'spec_helper'

describe Connection do
  it {should belong_to(:post)}
  it {should belong_to(:person)}
end
