class CreateSentence2s < ActiveRecord::Migration[5.1]
  def change
    create_table :sentence2s do |t|
      t.string :sentence_center
    end
  end
end
