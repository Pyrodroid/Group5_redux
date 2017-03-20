Feature: Display maps
  
    Scenario: Map opens on main dash
        Given I am on the dashboard page
        Then I should see a map
        
    Scenario: click more info
        Given I am on the dashboard page
        Then I click more info
        Then I should see a map
        
        Scenario: Markers
        Given A meet is proposed
        And I am on the dashboard page
        Then I should see a marker
        And The infobox should have a description
        
    Scenario: Zoom to meet location
        Given I am on more info
        And I give a location
        Then magnification should be true
        
