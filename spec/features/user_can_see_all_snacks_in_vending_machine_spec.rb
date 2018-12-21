require 'rails_helper'


describe 'A user' do
  context 'on the vending machine show page' do
    it 'sees all snack names associated' do

      owner_1 = Owner.create(name: "Jim's Snacks")
      machine_1  = owner_1.machines.create(location: "Local Bar")
      snack_1 = machine_1.snacks.create(name: "Hershey Bar")
      snack_2 = machine_1.snacks.create(name: "Tylenol")

      visit machine_path(machine_1)

      expect(page).to have_content(snack_1.name)
      expect(page).to have_content(snack_2.name)
    end
  end
end 
