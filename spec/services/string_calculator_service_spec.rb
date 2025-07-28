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
    end
  end
end
