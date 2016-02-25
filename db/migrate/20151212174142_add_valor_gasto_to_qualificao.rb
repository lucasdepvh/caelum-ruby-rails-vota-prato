class AddValorGastoToQualificao < ActiveRecord::Migration
  def change
  add_column :qualificacoes, :valor_gasto, :integer
  end
end
