Given /^the following movies exist:$/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
    #assert page.body =~ /arg1(.|\n)+Director:\narg2/m
    if !body.include? arg1
        flunk("Page missing the movie!")
    end
    if !body.include? arg2
        flunk("Page missing the director!")
    end
end