class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :time
      t.string :image_url
      t.bigint :user_id
      t.bigint :category_id

      t.timestamps
    end
  end
end
