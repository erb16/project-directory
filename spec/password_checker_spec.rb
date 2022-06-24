require 'password_checker'

RSpec.describe PasswordChecker do 
  it "returns true if the password's length > 8" do
    passwordchecker = PasswordChecker.new
    result = passwordchecker.check("password1")
    expect(result).to eq true
  end

  it "returns true if the password's length = 8" do
    passwordchecker = PasswordChecker.new
    result = passwordchecker.check("password")
    expect(result).to eq true
  end

  it "fails if the password's length < than 8" do
    passwordchecker = PasswordChecker.new
    expect { passwordchecker.check("p") }.to raise_error "Invalid password, must be 8+ characters."
  end

end
