When /^I send a GET request for "([^"]*)"$/ do |path|
    get path
end

Then /^the response code should be "([^"]*)"$/ do |code|
    last_response.status.should == code.to_i
end
