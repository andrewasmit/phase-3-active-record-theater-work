class CreateAuditionTable < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :actor
      t.string :location
      t.integer :belongs_to
    end
  end
end
