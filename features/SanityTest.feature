@sanity_test
Feature: Sanity Test

@test_text_error
Scenario: Text input test invalid
	Given User has [Example Form/view form] page opened
	And The [number input error message] is invisible
	When User enters 'test' to the [number input]
	And User selects the [selenium option]
	Then The [number input error message] is visible

@test_text
Scenario: Text input test
	Given User has [Example Form/view form] page opened
	  And The [number input] value is empty
	 When User enters '12' to the [number input]
	 Then The [number input] value is not empty
	  And The [number input] value is '12'
	  And The [number input] value is not '21'
	  And The [number input] value is more than '5'
	  And The [number input] value is more than or equal '12'
	  And The [number input] value is less than '100'
	  And The [number input] value is between '12' and '10'
	  And The page has '1' items of [number input]

@test_radio
Scenario: Radio button test
	Given User has [Example Form/view form] page opened
	  And The [selenium option] is not selected
	  And The [watir option] is not selected
	  And The [capybara option] is not selected
	 When User selects the [selenium option]
	 Then The [selenium option] is selected

@test_checkbox
Scenario: Checkbox test
	Given User has [Example Form/view form] page opened
	  And The [csharp box] is unchecked
	  And The [java box] is unchecked
  	And The [python box] is unchecked
	  And The [ruby box] is unchecked
	 When User checks the [python box]
	  And User checks the [ruby box]
	 Then The [python box] is checked
	  And The [ruby box] is checked

@test_select
Scenario: Select list test
	Given User has [Example Form/view form] page opened
	  And The [browser list] value is empty
	 When User selects 'Chrome' on the [browser list]
	 Then The [browser list] value is 'Chrome'
	#And The [browser list] has item 'Opera'

@test_textarea
Scenario: Text area test
	Given User has [Example Form/view form] page opened
	  And The [comment area] value is empty
	 When User enters 'no comment.' to the [comment area]
	 Then The [comment area] value is not empty
	  And The [comment area] value is 'no comment.'
	 When User clears value on the [comment area]
	 Then The [comment area] value is empty

@test_button
Scenario: Submit button test
	Given User has [Example Form/view form] page opened
	  And The [response message] does not exist
	 When User enters '5' to the [number input]
	  And User selects the [selenium option]
	  And User checks the [python box]
	  And User selects 'Chrome' on the [browser list]
	 When User clicks the [submit button]
	 Then The browser shows [Example Form/form response] page
	  And The [response message] exists
	  And The [response message] value contains 'response'
	  And The [response message] value is 'Your response has been recorded.'
	 When User clicks the [submit another response link]
	 Then The browser shows [Example Form/view form] page
	  And The [response message] does not exist
