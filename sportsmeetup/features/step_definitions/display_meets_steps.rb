Given "There is a meet named $name" do |name|
    steps %Q{
        When I select "#{name}" from "Name"
    }
end
Then "I should be taken to the meet details page" do |path|
    step "I am on #{path}"
    current_page?(controller: '')
end