class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text :acc_no
      t.string :title
      t.string :author
      t.text :edition
      t.string :publisher

      t.timestamps
    end
  end
end
