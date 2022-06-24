require 'gratitudes'

RSpec.describe Gratitudes do
  it "initally returns an empty string as output" do
    gratitudes = Gratitudes.new 
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "adds a gratitude to an array" do
    gratitudes = Gratitudes.new
    result = gratitudes.add("sunshine")
    expect(result).to eq ["sunshine"]
  end

  it "reformats an array to make it more readable" do
    gratitudes = Gratitudes.new
    result = gratitudes.add("sunshine")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: sunshine"
  end

  it "adds multiple gratitudes to an array" do
    gratitudes = Gratitudes.new
    result = gratitudes.add("sunshine")
    result = gratitudes.add("health")
    result = gratitudes.add("coffee")
    expect(result).to eq ["sunshine", "health", "coffee"]
  end

  it "reformats an array to make it more readable, even with multiple gratitudes" do
    gratitudes = Gratitudes.new
    result = gratitudes.add("sunshine")
    result = gratitudes.add("health")
    result = gratitudes.add("coffee")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: sunshine, health, coffee"
  end

end
