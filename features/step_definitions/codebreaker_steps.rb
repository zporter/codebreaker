Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(output)
  game.start
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

Given /^the secret code is "([^"]*)"$/ do |arg1|
end

When /^I guess "([^"]*)"$/ do |arg1|
end

Then /^the mark should be "([^"]*)"$/ do |arg1|
end

class Output
  def messages
    @messages ||= []
  end
  
  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end
