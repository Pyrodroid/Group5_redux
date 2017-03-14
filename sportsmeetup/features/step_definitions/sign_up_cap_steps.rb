Given(/^user navigates to meet list$/) do
  visit games_path
  page.should have_css('table#meets_list')
end

When(/^a meet is( not)? at maximum capacity$/) do |negate|
  @maxed_meets = Hash.new
 
  #trs = page.assert_selector('table#meets tr', :minimum => 2)
    
  page.all('table#meets_list tr.meet').each do |tr|    
    tds = tr.all('td')
    if negate
      if tds[6].text.to_i < tds[5].text.to_i
        @maxed_meets[tds[0].text] = tds.size
      end
    else
      if tds[6].text.to_i >= tds[5].text.to_i
        @maxed_meets[tds[0].text] = tds.size
      end
    end

  end
end

Then(/^sign-up button should( not)? be disabled$/) do |negate|
  len = negate ? 10 : 9
  @maxed_meets.keys.each do |key|
    expect(@maxed_meets[key]).to eql(len)
  end
end
