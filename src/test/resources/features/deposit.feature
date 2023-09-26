Feature: deposit
    As a customer
    I want to deposit from my account using ATM

Background:
    Given a customer with id 1 and pin 111 with balance 100 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit amount less than balance
    When I deposit 50 from ATM
    Then my account balance is 150

Scenario: Deposit amount more than balance
    When I deposit 5000 from ATM
    Then my account balance is 5100