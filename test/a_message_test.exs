defmodule AMessageTest do
  use ExUnit.Case
  doctest AMessage

  describe "Missing enforced keys" do
    test "throws compile error (if test uncommented)" do
      # %AMessage{}
    end
  end

  test "throws runtime error" do
    assert catch_error(AMessage.new(%{}))
  end
end
