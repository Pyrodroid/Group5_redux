Feature: Recieving notification of new meets
    Scenario: Add email for notification
        Given I have signed up for notifications
        And A meet is proposed
        And The meet has a sport in my intrestes
        Then I should recieve an email about the meet
        
    Scenario: Canceled meet notification
        Given I have signed up for notification
        When A meet is canceled
        Then I should recieve an email notification

    Scenario: Meet is not in my intrestes
        Given I have signed up for notifications
        And A meet is proposed
        And The sport is not in my intrestes
        Then I should not recieve and email notification
       
    Scenario: Meet is when I am free
        Given I have signed up for notifications
        And A meet is proposed
        And The sport is in my intrestes
        And I have listed my free times
        And I am free durring the meet time
        Then I should recieve email notifications

    Scenario: Meet is when I am busy
        Given I have signed up for notifications
        And A meet is proposed
        And The sport is in my intrestes
        And I have listed my free times
        And I am busy durring the meet time
        Then I should not recieve email notifications