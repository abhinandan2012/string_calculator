require 'rails_helper'

RSpec.describe StringCalculator do
  describe ".add" do
    context "when the input is an empty string" do
      it "returns 0" do
        expect(StringCalculatorService.add("")).to eq(0)
      end

      it "returns the number for a single number" do
        expect(StringCalculatorService.add("1")).to eq(1)
      end

      it "returns the sum of two numbers" do
        expect(StringCalculatorService.add("1,5")).to eq(6)
      end

      it "handle any amount of numbers" do
        expect(StringCalculatorService.add("1,2,3,4,5")).to eq(15)
      end

      it "handle new lines between numbers" do
        expect(StringCalculatorService.add("1\n2,3")).to eq(6)
      end

      it "supports custom delimiters" do
        expect(StringCalculatorService.add("//;\n1;2")).to eq(3)
      end
    end
  end
end
