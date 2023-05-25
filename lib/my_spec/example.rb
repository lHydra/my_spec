module MySpec
  class Example
    attr_reader :name, :described_class, :results

    def initialize(name, described_class, results)
      @name = name
      @described_class = described_class
      @results = results
    end

    def assert(actual_value, expected_value)
      puts "start executing #{name}"

      if actual_value == expected_value
        puts green_dot
        results << green_dot
      else
        raise ExampleError.new("An error occurred during the execution of the example '#{name}'")
      end
    end

    private

    def green_dot
      "\e[32m.\e[0m"
    end
  end
end
