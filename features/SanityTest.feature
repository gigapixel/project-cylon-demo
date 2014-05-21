Feature: Sanity Test

@sanity @text_test
Scenario: Text input test
	Given User has [Watir Example] page opened
	  And The [text input] value is empty
	 When User enters '12' to the [text input]
	 Then The [text input] value is not empty
	  And The [text input] value is '12'
	  And The [text input] value is not '21'
	  And The [text input] value is more than '5'
	  And The [text input] value is more than or equal '12'
	  And The [text input] value is less than '100'
	  And The [text input] value is between '12' and '10'
	  And The page has '1' items of [text input]

@sanity @radio_test
Scenario: Radio button test
	Given User has [Watir Example] page opened
	  And The [watir option] is not selected
	  And The [selenium option] is not selected
	 When User selects the [watir option]
	 Then The [watir option] is selected
	  And The [selenium option] is not selected


@sanity @checkbox_test
Scenario: Checkbox test
	Given User has [Watir Example] page opened
	  And The [ruby box] is unchecked
	  And The [java box] is unchecked
  	And The [python box] is unchecked
	 When User checks the [ruby box]
	  And User checks the [python box]
	 Then The [ruby box] is checked
	  And The [python box] is checked
	  And The [java box] is unchecked


@sanity @select_test
Scenario: Select list test
	Given User has [Watir Example] page opened
	  And The [browser list] value is 'Firefox'
	 When User selects 'Chrome' on the [browser list]
	 Then The [browser list] value is 'Chrome'
	#And The [browser list] has item 'Opera'


@sanity @button_test
Scenario: Submit button test
	Given User has [Watir Example] page opened
	  And The [error message] does not exist
	 When User clicks the [submit button]
	 Then The browser shows [Watir Example Response] page
	 And The [error message] exists
	 And The [error message] value contains 'something went wrong.'
