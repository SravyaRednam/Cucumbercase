Feature: TestMeApp

  Background: 
    Given Team executive login

  @Datadriven
  Scenario Outline: Registration for TestmeApp
    Given Team is at signup for testmeApp
    When Team provides "<username>" 
    Then Team provides "<firstname>" , "<lastname>" , "<password>" , "<confirmpassword>"
    And Team continues to provides "<gender>" , "<email>" , "<mobileno>" , "<dob>" , "<address>" , "<secque>" , "<answer>"
    Then registration is successful

    Examples: 
      | username | firstname | lastname | password   | confirmpassword | gender | email           | mobileno   | dob        | address   | secque                 | answer |
      | H20922T6 | team      | two      | testing123 | testing123      | female | team2@gmail.com | 9848022338 | 01/30/1997 | Hyderabad | What is your Pet Name? | zoro   |

  @FunctionalTest
  Scenario Outline: Login
    When Team executive provides "<username>" and "<password>" as credentials
    Then Login is successful

    Examples: 
      | username | password    |
      | Lalitha  | password123 |

  @SmokeTest
  Scenario: Search for product
    Given Team searches for products in the search field
      | Head |
    Then Team verifies the product availability

  @RegressionTest
  Scenario: The one where the user moves to the cart without adding any item in it
    Given Team proceeds to payment without adding any item in the cart
    Then TestMeApp doesnot display the cart icon
    When Team proceeds to payment with adding any item to the cart
    Then TestMeApp displays cart icon
