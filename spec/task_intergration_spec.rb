require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the task execution path', {:type => :feature}) do

  it('takes entries and returns a list of entries') do
    visit('/')
    fill_in("description", :with => 'bang it out')


    click_button('Submit')
    expect(page).to have_content('Here is your task:')
  end
end
