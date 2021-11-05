class CreateJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :date
      t.string :entry

    end
  end
end
