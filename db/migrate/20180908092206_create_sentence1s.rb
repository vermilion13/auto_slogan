class CreateSentence1s < ActiveRecord::Migration[5.1]
  def change
    create_table :sentence1s do |t|
      t.string :sentence_top
    end
  end
end
