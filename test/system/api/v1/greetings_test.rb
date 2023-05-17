require 'application_system_test_case'

class Api::V1::GreetingsTest < ApplicationSystemTestCase
  setup do
    @api_v1_greeting = api_v1_greetings(:one)
  end

  test 'visiting the index' do
    visit api_v1_greetings_url
    assert_selector 'h1', text: 'Greetings'
  end

  test 'should create greeting' do
    visit api_v1_greetings_url
    click_on 'New greeting'

    fill_in 'Greeting', with: @api_v1_greeting.greeting
    click_on 'Create Greeting'

    assert_text 'Greeting was successfully created'
    click_on 'Back'
  end

  test 'should update Greeting' do
    visit api_v1_greeting_url(@api_v1_greeting)
    click_on 'Edit this greeting', match: :first

    fill_in 'Greeting', with: @api_v1_greeting.greeting
    click_on 'Update Greeting'

    assert_text 'Greeting was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Greeting' do
    visit api_v1_greeting_url(@api_v1_greeting)
    click_on 'Destroy this greeting', match: :first

    assert_text 'Greeting was successfully destroyed'
  end
end
