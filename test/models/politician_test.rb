require 'test_helper'

class PoliticianTest < ActiveSupport::TestCase
  setup do
  end

  test "the truth" do
    assert true
  end

  test "there is data" do
    assert Politician.count > 0
  end

  test "validation test for name and email existing" do
    assert Politician.create(name: "Jimmy Fallon", email: "blah@email.com", password: "password"), false
  end

  test "Jimmy is himself" do
    assert_equal "Jimmy Fallon", politicians(:fallon).name
  end

  test "email must be unique" do
    fake_politician = Politician.new(name: "Taters", email: "jimmy@gmail.com")
    refute fake_politician.save
  end

  test "validations passing" do
    assert_difference "Politician.count", 1 do
      Politician.create(name: "Tater", email: "tater@gmail.com", password: "password")
    end
  end






end
