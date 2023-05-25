require "my_spec/version"
require "my_spec/describe"

module MySpec
  class ExampleError < StandardError; end

  def self.describe(klass_name, &block)
    describe_block = Describe.new(klass_name)
    describe_block.instance_eval(&block)

    puts describe_block.results.join
  end
end
