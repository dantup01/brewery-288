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

feature 'customer model creates new customer' do
  scenario 'returns full customer details' do
    # setup
    customer = Customer.new(first_name: 'Dan', last_name: 'Tuppen', address: '130 Spa Road', city: 'London', county: 'Southwark', post_code: 'SE16 3FL')

    # excercise and verify
    expect(customer.first_name).to eq 'Dan'
    expect(customer.last_name).to eq 'Tuppen'
    expect(customer.address).to eq '130 Spa Road'
    expect(customer.city).to eq 'London'
    expect(customer.county).to eq 'Southwark'
    expect(customer.post_code).to eq 'SE16 3FL'
  end
end
