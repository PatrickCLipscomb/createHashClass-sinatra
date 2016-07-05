require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the OurHash path', {:type => :feature}) do
  it('creates a OurHash class that functions as a mediocre Hash') do
    visit('/')
    fill_in('key1', :with => 'apple')
    fill_in('value1', :with => 'pie')
    fill_in('key2', :with => 'pizza')
    fill_in('value2', :with => 'crust')
    fill_in('key3', :with => 'nacho')
    fill_in('value3', :with => 'cheese')
    click_button('Submit')
    expect(page).to have_content('apple'' ''pie'' ''pizza'' ''crust'' ''nacho'' ''cheese')
  end
end
