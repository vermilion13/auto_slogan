class CreateSlogans < ActiveRecord::Migration[5.1]
  def change
    create_table :slogans do |t|
      t.integer :user_id
      t.string :slogan_text
    end
  end
end
