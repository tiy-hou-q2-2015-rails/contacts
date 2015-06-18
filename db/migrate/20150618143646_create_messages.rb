class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :from
      t.string :email
      t.text :message

      t.timestamps null: false
    end
  end
end
