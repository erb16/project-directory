require 'check_codeword'

RSpec.describe "check_codeword method" do
  
  it "checks if the codeword is horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "checks if the codeword starts with 'h' and ends with 'e'" do
    result = check_codeword("hippie")
    expect(result).to eq "Close, but nope."
  end

  it "returns WRONG! if the code_word is not close to horse" do
    result = check_codeword("donkey")
    expect(result).to eq "WRONG!"
  end
end
