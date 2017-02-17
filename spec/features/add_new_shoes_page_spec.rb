require 'rails_helper'

describe 'see all shoes process' do
  it 'show all shoes of Elite' do
    admin = FactoryGirl.create(:user)
    login_as(admin, :scope => :user)
    visit root_path
    click_link 'Add Shoe'
    fill_in 'Name', with: 'Addidas'
    fill_in 'Description', with: 'Lightweight'
    fill_in 'Price', with: 65
    attach_file "product_image", "spec/asset_spec/photos/addidas.jpeg"
    click_on 'Add'
    expect(page).to have_content 'Addidas'
  end
end
