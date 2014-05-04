class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.string :filename
      t.references :project, index: true

      t.timestamps
    end
  end
end
