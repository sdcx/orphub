Feature: 
As a user
I would like to change my username and password
So that I can my accounts can remain secure if I believe someone else has my login details

    Background:
        Given that User "AB1234567890" exists
        When User is logged in
        And User is on "Profile" page
        Then User can see Username


    Scenario: I modify my username to have permitted characters

    Scenario: I modify my username to have non-permitted characters

    Scenario: I change my password and verification password to identical values with permitted characters

    Scenario: I change my password and verification password to identical values with non-permitted characters

    Scenario: I change my password and verification password to non-identical values