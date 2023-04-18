class Solver
  def factorial(num)
    raise ArgumentError, 'Argument must be a positive integer' unless num.is_a?(Integer) && num >= 0
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 15).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
