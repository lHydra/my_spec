require_relative 'example'

module MySpec
  class Describe
    attr_reader :described_class, :results

    def initialize(klass_name)
      @described_class = klass_name
      @results = []
    end

    def example(name, &block)
      Example.new(name, described_class, results).instance_eval(&block)
    end
  end
end
