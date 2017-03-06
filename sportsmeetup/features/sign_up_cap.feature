Feature: Meet Sign-Up Cat

Scenario: Cap on Meet List
Given user navigates to meet list
When a meet is at maximum capacity
Then sign-up button should be disabled
When a meet is less than maximum capacity
Then sign-up button should be enabled

Scenario: Cap on Meet Info
Given user navigates to a meet
When the meet is at maximum capacity
Then sign-up button should be disabled
When a meet is less than maxinum capacity
Then sign-up button should be enabled
