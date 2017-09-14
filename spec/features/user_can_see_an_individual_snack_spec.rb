require 'rails_helper'

feature "When a user visits a snack show page" do
  # As a user
  # When I visit a specific snack page
  scenario 'they see the name and price of the snack' do
    # I see the name of that snack
    # I see the price for that snack
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    mule = Snack.create(name: "Moscow Mule", price: 7.50)
    dons.snacks << mule
    # dons.snacks.create(name: "Cape Codder", price: 5.50)

    visit snack_path(mule)

    expect(page).to have_content("Moscow Mule")
    expect(page).to have_content("$7.50")
  end

  # scenario 'they see a list of locations that carry the snack' do
  #   # I see a list of locations with vending machines that carry that snack
  #   owner1 = Owner.create(name: "Sam's Snacks")
  #   owner2 = Owner.create(name: "Bob's Better Snacks")
  #   bobs = owner1.machines.create(location: "Bob's Mixed Drinks")
  #   dons  = owner2.machines.create(location: "Don's Mixed Drinks")
  #   mule = Snack.create(name: "Moscow Mule", price: 7.50)
  #   dons.snacks << mule
  #   bobs.snacks << mule
  #
  #   visit snack_path(mule)
  #
  #
  #   expect(page).to have_content("Sam's Snacks")
  #   expect(page).to have_content("Bob's Better Snackss")
  # end
  #
  # scenario 'they see an average price for snacks for vending machines' do
  #   # I see the average price for snacks in those vending machines
  #   owner1 = Owner.create(name: "Sam's Snacks")
  #   owner2 = Owner.create(name: "Bob's Better Snacks")
  #   bobs = owner1.machines.create(location: "Bob's Mixed Drinks")
  #   dons  = owner2.machines.create(location: "Don's Mixed Drinks")
  #   mule = Snack.create(name: "Moscow Mule", price: 7.50)
  #   cod = Snack.create(name: "Cape Codder", price: 5.50)
  #   dons.snacks << mule
  #   bobs.snacks << Snack.all
  #
  #   visit snack_path(mule)
  #
  #
  #   expect(page).to have_content("Average: $7.50")
  #   expect(page).to have_content("Average: $6.50")
  # end
  #
  # scenario 'they see how many snacks each vending machine has' do
  #   # And I see a count of the different kinds of items in that vending machine
    # owner1 = Owner.create(name: "Sam's Snacks")
    # owner2 = Owner.create(name: "Bob's Better Snacks")
    # bobs = owner1.machines.create(location: "Bob's Mixed Drinks")
    # dons  = owner2.machines.create(location: "Don's Mixed Drinks")
    # mule = Snack.create(name: "Moscow Mule", price: 7.50)
    # cod = Snack.create(name: "Cape Codder", price: 5.50)
  #   dons.snacks << mule
  #   bobs.snacks << Snack.all
  #
  #   visit snack_path(mule)
  #
  #
  #   expect(page).to have_content("Types: 1")
  #   expect(page).to have_content("Types: 1")
  # end



end
