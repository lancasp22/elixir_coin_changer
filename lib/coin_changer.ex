defmodule CoinChanger do
  @coins [200, 100, 50, 20, 10, 5, 2, 1]

  def convert(amount) do
    do_convert(amount, @coins, [])
  end

  defp do_convert(0, _coins, result), do: result
  defp do_convert(amount, [coin | rest], result) when amount >= coin do
    number = div(amount, coin)
    rem(amount, coin)
    |> do_convert(rest, [{number, coin} | result])
  end

  defp do_convert(amount, [_coin | rest], result) do
    do_convert(amount, rest, result)
  end

  # defp do_convert(amount, [coin | rest], result) do
  #   if (amount >= coin) do
  #     number = div(amount, coin)
  #     rem(amount, coin)
  #     |> do_convert(rest, [{number, coin} | result])
  #   else
  #     do_convert(amount, rest, result)
  #   end
  # end

end
