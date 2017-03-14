Feature: Meet Sign-Up Cap

Scenario: Cap on Meet List
Given user navigates to meet list
When a meet is at maximum capacity
Then sign-up button should be disabled
When a meet is not at maximum capacity
Then sign-up button should not be disabled

Scenario: Cap on Meet Info
Given user navigates to a meet
When the meet is at maximum capacity
Then sign-up button should be disabled
When a meet is less than maxinum capacity
Then sign-up button should be enabled
