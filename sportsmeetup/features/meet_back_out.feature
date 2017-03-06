Feature: Backing out of Meets

Scenario: Back Out From Meet List
Given user is on meet list
When user is signed up for one or more meets
Then those meets have a back-out button
But meets not signed up to do not have a back-out button

Given a back-out button
When user clicks back-out button
Then user is given back-out prompt
And user is removed from that meet

Scenario: Back Out From Individual Meet Info
Given user is on a meet
When user is signed up for that meet
Then that meet should have a back-out button

Given a back-out button
When user clicks back-out button
Then user is given back-out prompt
And user is removed from that meet
