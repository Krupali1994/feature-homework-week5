Feature: Book category

  Background: I should be able to see top menu tabs on homepage with categories
    Given I enter URL "https://demo.nopcommerce.com/" in browser
    And   I am on homepage

  Scenario Outline: I should be able se top menu tabs on homepage with categories
    When I am on homepage
    Then I should be able to see menu tabs with "<categories>"

    Examples:
      | categories        |
      | computer          |
      | apparel           |
      | digital downloads |
      | books             |
      | jewellery         |
      | gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be naviagtes to book category
    And  I should be able to see "<filters>"

    Examples:
      | filters  |
      | short by |
      | diplay   |
      | the grib |
      | list tab |

  Scenario Outline: I should be able to see list of terms of each filters
    Given I am on book page
    When  I click on "<filters>"
    Then  I should be able to see "<list>" in dropdown menu

    Examples:
      | filters | list                                                                           |
      | sort by | name: A to Z, name: Z to A, Price: Low to High, Price: High to Low, created on |
      | display | 3, 6, 9                                                                        |

  Scenario Outline: I should be able to choose any filters option with specific result
    Given I am on book page
    When  I click on "<filters>"
    And   I click on any "<option>"
    Then  I should be able to choose any filters option from the list
    And   I should be able to see "<result>"

    Examples:

      | filter  | option             | result                                                            |
      | sort by | name: A to Z       | sorted product with the product name in alphabetical order A to Z |
      | sort by | name: Z to A       | sorted product with the product name in alphabetical order Z to A |
      | sort by | price: low to high | sorted with the price in descending order                         |
      | sort by | price: high to low | sorted with the price in ascending order                          |
      | sort by | created on         | recently added product should be show first                       |
      | display | 3                  | 3 product in a page                                               |
      | display | 6                  | 6 product in a page                                               |
      | display | 9                  | 9 product in a page                                               |

Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
  Given I am on book page
  When I click on "<diaplay>" format icon
  Then I should be able to see product display format accordind display type as per given in SRS docyment

  Examples:
  | I display format icon |
  | grid                  |
  |List                   |


