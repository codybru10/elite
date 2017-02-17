require 'rails_helper'

describe 'see all shoes process' do
  it 'show all shoes of Elite' do
    admin = FactoryGirl.create(:user)
    login_as(admin, :scope => :user)
    visit root_path
    click_link 'Shoes'
    expect(page).to have_content 'You made it to the products page'
  end
end
