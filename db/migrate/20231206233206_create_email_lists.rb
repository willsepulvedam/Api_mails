class CreateEmailLists < ActiveRecord::Migration[7.1]
  def change
    create_table :email_lists do |t|
      t.string :address

      t.timestamps
    end
  end
end
