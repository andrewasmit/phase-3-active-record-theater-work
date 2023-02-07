class AddPhoneToAuditions < ActiveRecord::Migration[5.2]
  def change
    add_column :auditions, :phone, :integer
  end
end
