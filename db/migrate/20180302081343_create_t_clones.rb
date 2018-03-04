class CreateTClones < ActiveRecord::Migration[5.1]
  def change
    create_table :t_clones do |t|
      t.text :content

      t.timestamps
    end
  end
end
