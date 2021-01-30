class CreateRepos < ActiveRecord::Migration[6.0]
  def change
    create_table :repos do |t|
      t.string :name
      t.string :type
      t.text :body

      t.timestamps
    end
  end
end
