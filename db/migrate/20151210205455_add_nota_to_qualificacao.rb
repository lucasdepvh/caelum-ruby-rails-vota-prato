class AddNotaToQualificacao < ActiveRecord::Migration
  def change
   add_column :qualificacoes, :nota, :integer
  end
end
