class CreateQualificacoes < ActiveRecord::Migration
  def change
    create_table :qualificacoes do |t|
      t.integer :nota
      t.integer :valor_gasto
      t.timestamps null: false
    end
  end
end
