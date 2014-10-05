require 'rails_helper'

feature "User can create new cars" do
  scenario "User can create a new car" do
    car = FactoryGirl.create(:car)

    visit new_car_path(car)

    fill_in('Color', with: car.color)
    fill_in('Year', with:car.year)
    fill_in('Mileage', with: car.mileage)
    select('Ford')

    click 'Submit Car'
    expect(page).to have_content("All the Cars")
  end

  scenario "User get an error if not fill out all required field" do
    car = FactoryGirl.create(:car)

    visit new_car_path(car)

    fill_in('Color', with: car.color)
    fill_in('Year', with:car.year)
    select('Ford')

    click_on 'Submit Car'
    expect(page).to have_content("error")
  end
end
