class StringCalculatorService
  def self.add(input)
    return 0 if input.empty?
    return input.to_i if input.size == 1

    delimiter = ","
    if input.start_with?("//")
      parts = input.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2..-1])
      input = parts[1]
    end

    numbers = input.split(/#{delimiter}|\n/).map(&:to_i)
    negatives = numbers.select { |n| n.negative? }
    raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?

    numbers.sum
  end
end
