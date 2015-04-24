require_relative 'spec_helper'

describe 'home page' do

  it 'has a sign up button' do
    # This does nothing, it should raise an error since there's no element
    home_page.sign_up_button_element

    home_page.goto

    button = home_page.sign_up_button_element

    # Expecting an error here since the 'button' is an anchor tag
    puts "Text: #{button.text}"
    puts "Tag: #{button.tag_name}"
    puts "Wrapped class: #{button.instance_variable_get('@element').class}"
  end
end
