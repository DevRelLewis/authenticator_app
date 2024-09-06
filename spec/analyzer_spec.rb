# analyzer_spec.rb
require_relative '/Users/machinelewis/Desktop/dev_projects/ruby/my_rails_project/app/analyzer.rb'  # Link to the analyzer.rb file
require 'rspec'

RSpec.describe Analyzer do
  before do
    @analyzer = Analyzer.new
  end

  it "concatenates the first and last name" do
    result = @analyzer.analyze("Lewis", "Meyers")
    expect(result[:full_name]).to eq("Lewis Meyers")
  end

  it "calculates the length of the full name" do
    result = @analyzer.analyze("Lewis", "Meyers")
    expect(result[:length]).to eq(12)
  end

  it "reverses the full name" do
    result = @analyzer.analyze("Lewis", "Meyers")
    expect(result[:reversed]).to eq("sreyeM siweL")
  end
end
