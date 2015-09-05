class Fizzbuzz
  def run(max)
    1.upto(max).map do |n|
      fizz(buzz(fizzbuzz(n)))
    end
  end

  def fizz(n)
    return n if n.is_a?(String)
    return 'fizz' if (n % 3).zero?
    return n
  end

  def buzz(n)
    return n if n.is_a?(String)
    return 'buzz' if (n % 5).zero?
    return n
  end

  def fizzbuzz(n)
    return n if n.is_a?(String)
    return "fizzbuzz" if (n % 15).zero?
    return n
  end
end


# if n + 1 == 15
#         fizzbuzz(n + 1)
#       elsif n + 1 == 5
#         fizz(n + 1)
#       elsif n + 1 == 3
#         buzz(n + 1)
#       end
