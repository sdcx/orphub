Feature: 
As a user
I would like to view account and balance information for all my active accounts
So that I can quickly decide what accounts need maintenance

Background:
Given that User "AB1234567890" exists
And User is logged in
And user has account "01234567"
And user has account "12345678"
And user has account "23456789"

    Scenario: My dashboard loads
        Given that I have logged on
        And I am redirected to my dashboard
        When the page loads
        Then I see <account type>
        And I see <account name>
        And I see <account sort code>
        And I see <account number>
        And I see <balance>
        
        Examples:
        | account type  | account name              | account sort code | account number    | balance   |
        | "Current"     | "My Current Account"      | "00-00-00"        | "01234567"        | 00.00     |
        | "Savings"     | "My Savings Account"      | "00-00-00"        | "12345678"        | 00.00     |
        | "Investment"  | "My Investment Account"   | "00-00-00"        | "23456789"        | 00.00     |

    Scenario: I have an overdrawn account
        Given that I have logged on
        And I am redirected to my dashboard
        When the page loads
        Then I see <account type>
        And I see <account name>
        And I see <account sort code>
        And I see <account number>
        And I see <balance>
        And I see a red flag

        Examples:
        | account type  | account name              | account sort code | account number    | balance       |
        | "Current"     | "My Current Account"      | "00-00-00"        | "01234567"        | -10.00        |
        | "Savings"     | "My Savings Account"      | "00-00-00"        | "12345678"        | -10.00        |
        | "Investment"  | "My Investment Account"   | "00-00-00"        | "23456789"        | -10.00        |
