require 'rails_helper'

feature "User can create new manufacturers" do
  scenario "User can create a new manufacturer" do
    manufacturer = FactoryGirl.create(:manufacturer)

    visit new_manufacturer_path(manufacturer)

    fill_in('Name', with: manufacturer.name)
    fill_in('Country', with:manufacturer.country)

    click_on 'Create Manufacturer'
    expect(page).to have_content(manufacturer.name)
  end

  scenario "User get an error if not fill out all required field" do
    manufacturer = FactoryGirl.create(:manufacturer)

    visit new_manufacturer_path(manufacturer)

    fill_in('Name', with: manufacturer.name)

    click_on 'Create Manufacturer'
    expect(page).to have_content("error")
  end
end
