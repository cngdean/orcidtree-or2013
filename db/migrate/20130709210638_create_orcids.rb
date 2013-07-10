class CreateOrcids < ActiveRecord::Migration
  def change
    create_table :orcids do |t|

      t.timestamps
    end
  end
end
