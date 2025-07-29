# String Calculator

## Overview

This project implements a simple String Calculator following the Test-Driven Development (TDD) approach. The calculator
can add numbers provided in a string format with various delimiters and handle edge cases such as empty strings and
negative numbers.

## Features

- Add numbers from a comma-separated string.
- Handle any number of inputs.
- Support new lines as delimiters.
- Support custom delimiters.
- Raise exceptions for negative numbers, listing all negative values provided.

## Requirements

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (version 2.7 or later)
- [RSpec](https://rspec.info/) for testing

## Getting Started

1. Clone the repository:
   ```sh
   git clone https://github.com/abhinandan2012/string_calculator.git
   cd string_calculator
2. Install reuired gems:
   ```sh
   bundle install

## Running Tests

1. To run the tests, execute:
   ```sh
   bundle exec rspec

## Implementation details

The StringCalculator class has a single class method add which takes a string of numbers and returns their sum. The
method follows these rules:

- An empty string returns 0.
- A single number returns that number.
- Multiple numbers separated by commas or new lines are summed up.
- Custom delimiters can be defined at the beginning of the string using the format //[delimiter]\n[numbers].
- If negative numbers are included, an exception is raised listing all negative numbers provided.

## TDD Process

This project was developed using the Test-Driven Development (TDD) methodology. The process involved writing a test for
each feature, implementing the simplest solution to pass the test, and refactoring as necessary.