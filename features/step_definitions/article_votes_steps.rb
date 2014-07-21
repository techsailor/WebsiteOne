Given(/^the following articles with votes exist:$/) do |table|
  table.hashes.each do |raw_hash|
    hash = {}
    raw_hash.each_pair { |k, v| hash[k.to_s.downcase.squish.gsub(/\s+/, '_')] = v }
    votes = hash.delete 'votevalue'
    if hash['author'].present?
      u = User.find_by_first_name hash['author']
      hash.except! 'author'
      article = u.articles.new hash
    else
      article = default_test_author.articles.new hash
    end

    article.save!
  end

end

Then(/^I should see a Vote value of "(.*?)"$/) do |vote_value|
  page.should have_text 'Vote value ' + vote_value
  pending # express the regexp above with the code you wish you had
end

Given(/^I have( not)? voted "(.*?)" article "(.*?)"$/) do |negative, up_or_down, article|
  pending # express the regexp above with the code you wish you had
end

