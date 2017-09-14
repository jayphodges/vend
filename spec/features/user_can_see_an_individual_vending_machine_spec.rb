require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see a list of all associated snacks with prices' do

    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    dons.snacks.create(name: "Moscow Mule", price: 7.50)
    dons.snacks.create(name: "Cape Codder", price: 5.50)

    visit machine_path(dons)

    expect(page).to have_content("Moscow Mule")
    expect(page).to have_content("Cape Codder")
    expect(page).to have_content("$7.50")
    expect(page).to have_content("$5.50")
    expect(page).to have_content("$6.50")
  end
end
