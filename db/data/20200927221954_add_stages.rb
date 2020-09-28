class AddStages < SeedMigration::Migration
  def up
    Stage.create name: 'SERVIÇOS INICIAIS'
    Stage.create name: 'ALVENARIAS'
    Stage.create name: 'ANÁLISE DE CUSTOS'
    Stage.create name: 'APARELHOS'
    Stage.create name: 'COBERTURAS'
    Stage.create name: 'CÓPIAS E REPRODUÇÕES '
    Stage.create name: 'DIVERSOS'
    Stage.create name: 'EQUIPAMENTOS E FERRAMENTAS'
    Stage.create name: 'ESCRITÓRIO DA OBRA '
    Stage.create name: 'ESQUADRIAS '
    Stage.create name: 'ESTUDOS DOS SOLOS '
    Stage.create name: 'FERRAGENS '
    Stage.create name: 'IMPOSTOS E TAXAS'
    Stage.create name: 'INFRA-ESTRUTURA'
    Stage.create name: 'INSTALAÇÕES ELÉTRICAS E DE TELEFONE'
    Stage.create name: 'INSTALAÇÕES HIRÁULICAS E SANITÁRIAS'
    Stage.create name: 'INSTALAÇÕES MECÂNICAS'
    Stage.create name: 'INSTALAÇÕES PROVISÓRIAS / SERVIÇOS PRELIMINARES '
    Stage.create name: 'LIGAÇÕES DEFINITIVAS'
    Stage.create name: 'LIMPEZAS (Terceirizado)'
    Stage.create name: 'MOVIMENTOS DE TERRA '
    Stage.create name: 'PAVIMENTAÇÕES'
    Stage.create name: 'PEITORIS'
    Stage.create name: 'PINTURAS'
    Stage.create name: 'PROJETOS '
    Stage.create name: 'REVESTIMENTOS '
    Stage.create name: 'RODAPÉS'
    Stage.create name: 'SOLEIRAS'
    Stage.create name: 'SUPER-ESTRUTURA '
    Stage.create name: 'TRANSPORTES E CARRETOS '
    Stage.create name: 'TRATAMENTOS '
    Stage.create name: 'VIDROS'
    Stage.create name: 'SERVIÇOS FINAIS'
  end

  def down
    Stage.delete_all
  end
end
