defmodule CoinChangerTest do
  use ExUnit.Case
  doctest CoinChanger

  test "1 penny returns 1 of 1 pence" do
    assert CoinChanger.convert(1) == [{1, 1}]
  end

   test "2 penny returns 1 of 2 pence" do
    assert CoinChanger.convert(2) == [{1, 2}]
  end

  test "3 penny returns 1 of 2 pence and 1 of 1 pence" do
    assert CoinChanger.convert(3) == [{1, 1},{1, 2}]
  end

  test "87 penny returns lots of coins" do
    assert CoinChanger.convert(87) == [{1, 2},{1, 5},{1, 10},{1, 20},{1, 50}]
  end

  test "243 penny returns 5 coins" do
    assert CoinChanger.convert(243) == [{1, 1},{1, 2},{2, 20},{1, 200}]
  end

  test "388 penny returns 1 of each coin" do
    assert CoinChanger.convert(388) == [{1, 1},{1, 2}, {1, 5}, {1, 10}, {1, 20},{1, 50}, {1, 100}, {1, 200}]
  end

end
