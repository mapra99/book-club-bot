class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.string :author, null: false
      t.string :site_url

      t.timestamps
    end
  end
end
