require 'rails_helper'

feature "user visits hompage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css 'h1', text: 'Brewery 288'
  end
end

# d do
#   it 'returns only active users' do
#     # setup
#     active_user = create(:user, active: true)
#     non_active_user = create(:user, active: false)

#     # exercise
#     result = User.active

#     # verify
#     expect(result).to eq [active_user]

#     # teardown is handled for you by RSpec
#   end
# end

# Prefix instance methods with a '#'
feature 'user model creates full name' do
  scenario 'returns the concatenated first and last name successfully' do
    # setup
    user = build(:user, first_name: 'Josh', last_name: 'Steiner')

    # excercise and verify
    expect(user.name).to eq 'Josh Steiner'
  end
end
