require 'test_helper'

class Api::V1::GreetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_greeting = api_v1_greetings(:one)
  end

  test 'should get index' do
    get api_v1_greetings_url
    assert_response :success
  end

  test 'should get new' do
    get new_api_v1_greeting_url
    assert_response :success
  end

  test 'should create api_v1_greeting' do
    assert_difference('Api::V1::Greeting.count') do
      post api_v1_greetings_url, params: { api_v1_greeting: { greeting: @api_v1_greeting.greeting } }
    end

    assert_redirected_to api_v1_greeting_url(Api::V1::Greeting.last)
  end

  test 'should show api_v1_greeting' do
    get api_v1_greeting_url(@api_v1_greeting)
    assert_response :success
  end

  test 'should get edit' do
    get edit_api_v1_greeting_url(@api_v1_greeting)
    assert_response :success
  end

  test 'should update api_v1_greeting' do
    patch api_v1_greeting_url(@api_v1_greeting), params: { api_v1_greeting: { greeting: @api_v1_greeting.greeting } }
    assert_redirected_to api_v1_greeting_url(@api_v1_greeting)
  end

  test 'should destroy api_v1_greeting' do
    assert_difference('Api::V1::Greeting.count', -1) do
      delete api_v1_greeting_url(@api_v1_greeting)
    end

    assert_redirected_to api_v1_greetings_url
  end
end
