class CreateMachinesAndSnacks < ActiveRecord::Migration[5.1]
  def change
    create_table :machines_and_snacks do |t|
      t.belongs_to :Machines, index: true
      t.belongs_to :Snacks, index: true
    end
  end
end
