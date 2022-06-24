# require 'reminder'

# RSpec.describe Reminder do
#   it "reminds the user to do a task" do
#     reminder = Reminder.new("Kay")
#     reminder.remind_me_to("Walk the dog")
#     result = reminder.remind()
#     expect(result).to eq "Walk the dog, Kay!"
#   end 
# end

# require 'counter'
# RSpec.describe Counter do
#   it "adds a number to the count instance variable" do
#     counter = Counter.new
#     counter.add(3)
#     result = counter.report
#     expect(result).to eq "Counted to 0 so far"
#   end
# end

require "counter"

RSpec.describe Counter do
  it "initially reports a count of zero" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end

  it "reports a count of added values with one addition" do
    counter = Counter.new
    counter.add(7)
    expect(counter.report).to eq "Counted to 7 so far."
  end

  it "reports a count of all added values" do
    counter = Counter.new
    counter.add(7)
    counter.add(3)
    counter.add(2)
    expect(counter.report).to eq "Counted to 12 so far."
  end
end


