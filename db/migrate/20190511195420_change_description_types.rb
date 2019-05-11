class ChangeDescriptionTypes < ActiveRecord::Migration[5.2]
  def change
    change_table :categories do |t|
      t.change :description, :text
    end
    change_table :products do |t|
      t.change :description, :text
    end
  end
end
