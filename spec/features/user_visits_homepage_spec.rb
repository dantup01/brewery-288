require 'rails_helper'

feature "user visits hompage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css 'h1', text: 'Brewery 288'
  end
end

feature 'user model creates full name' do
  scenario 'returns the concatenated first and last name successfully' do
    # setup
    user = User.new(first_name: 'Dan', last_name: 'Tuppen')

    # excercise and verify
    expect(user.first_name).to eq 'Dan'
    expect(user.last_name).to eq 'Tuppen'
  end
end
