require_relative '/Users/machinelewis/Desktop/dev_projects/ruby/my_rails_project/app/area_code.rb'
require 'rspec'

RSpec.describe 'AreaCode Program' do
  let(:dial_book) {
    {
      "New York" => "212",
      "New Brunswick" => "732",
      "Edison" => "908",
      "Plainsboro" => "609",
      "San Francisco" => "301",
      "Miami" => "305",
      "Palo Alto" => "650",
      "Evanston" => "847",
      "Orlando" => "407",
      "Lancaster" => "717"
    }
  }

  describe 'Full program behavior' do
    it 'handles valid city and allows the user to pick another city' do
      allow_any_instance_of(Object).to receive(:gets).and_return("y", "New York", "y", "Evanston", "n")

      # Debugging the output
      expect { area_code(dial_book) }.to output { |output| puts "Actual Output: #{output}" }.to_stdout
    end

    it 'handles invalid city and then valid city' do
      allow_any_instance_of(Object).to receive(:gets).and_return("y", "InvalidCity", "y", "Evanston", "n")

      # Debugging the output
      expect { area_code(dial_book) }.to output { |output| puts "Actual Output: #{output}" }.to_stdout
    end
  end
end
