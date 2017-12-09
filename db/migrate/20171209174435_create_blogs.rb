class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :sub_title
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
