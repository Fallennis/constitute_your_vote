require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "vote exists" do
    assert Vote.count > 1
  end
  
end
