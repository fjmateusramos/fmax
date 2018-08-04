class CreateExtintors < ActiveRecord::Migration[5.2]
  def change
    create_table :extintors do |t|

      t.timestamps
    end
  end
end
