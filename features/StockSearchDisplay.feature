<<<<<<< HEAD
Feature: Stock search 1

@basic
=======
Feature: Settrade stock search

@simple
>>>>>>> FETCH_HEAD
Scenario: Verify stock info display correct symbol
    Given User has [SettradeHomePage] open
     When User enters 'ICHI' to [txt_symbol]
      And User clicks [btn_search] link
     Then The system displays [StockInfoPage]
      And The [div_symbol] shows 'ICHI'

<<<<<<< HEAD

=======
>>>>>>> FETCH_HEAD
@outline
Scenario Outline: Verify stock info display correct symbol, last price is between floor and ceil
    Given User has [SettradeHomePage] open
     When User enters '<symbol>' to [txt_symbol]
      And User clicks [btn_search] link
     Then The system displays [StockInfoPage]
      And The [div_symbol] shows '<symbol>'
      And The [div_price] more than '<floor>'
      And The [div_price] less than '<ceil>'
Examples:
    | symbol | floor   | ceil   |
    | ADVANC | 171.00  | 317.00 |
<<<<<<< HEAD
    | INTUCH | 55.00   | 99.00  |
    | MCOT   | 20.20   | 37.25  |
=======
    | INTUSH | 55.00   | 99.00  |
    | MCOT   | 20.20   | 37.25  |

>>>>>>> FETCH_HEAD
