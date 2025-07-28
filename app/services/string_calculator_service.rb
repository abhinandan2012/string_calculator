class StringCalculatorService
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.size == 1
    numbers.split(",").map(&:to_i).sum
  end
end
