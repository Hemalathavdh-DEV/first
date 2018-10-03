class CreateFirstapps < ActiveRecord::Migration[5.2]
  def change
    create_table :firstapps do |t|
    	t.string :name
    	t.text :department
    	t.text :company
    end
  end
end
