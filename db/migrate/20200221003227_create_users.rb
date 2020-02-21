class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :github_id
      t.string :token
      t.string :handle
      t.references :cohort, null: false, foreign_key: true
      t.timestamps
    end
  end
end