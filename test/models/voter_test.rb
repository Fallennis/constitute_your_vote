require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "voter exist" do
    assert Voter.count > 0
  end
end
