class CreateSentence3s < ActiveRecord::Migration[5.1]
  def change
    create_table :sentence3s do |t|
      t.string :sentence_last
    end
  end
end
