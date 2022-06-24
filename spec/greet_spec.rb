require 'greet'

RSpec.describe "greet method" do

  it "returns 'Hello', plus a name as a string" do
    result = greet("you")

    expect(result).to eq "Hello, you!"
  end
end