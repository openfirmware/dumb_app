When /^I send a GET request for "([^"]*)"$/ do |path|
    get path
end

When /^I send more than one GET request in a second to "([^"]*)"$/ do |path|
    # We'll assume this happens in < 1 second
    get path
    get path
end

Then /^the response code should be "([^"]*)"$/ do |code|
    last_response.status.should == code.to_i
end
