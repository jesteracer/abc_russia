require 'spec_helper'

describe Transaction do
  it {should belong_to(:person)}
end
