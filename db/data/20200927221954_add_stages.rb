class AddStages < SeedMigration::Migration
  def up
    Stage.create(id:1, name: "Projetos e Aprovações") 
      SubStage.create(name: "Projetos", stage_id: 1) 
      SubStage.create(name: "Aprovação Legal", stage_id: 1)
      SubStage.create(name: "Outros", stage_id: 1)  

    Stage.create(id:2, name: 'Infra Básica')
      SubStage.create(name: "Terraplanagem e Escavações", stage_id: 2) 
      SubStage.create(name: "Instalação Barracão Provisório", stage_id: 2) 
      SubStage.create(name: "Energia Provisória", stage_id: 2) 
      SubStage.create(name: "Ligação de Esgoto", stage_id: 2) 
      

    Stage.create(id:3, name: 'Fundação')
      SubStage.create(name: "Material Básico", stage_id: 3) 
      SubStage.create(name: "Ferragem", stage_id: 3) 
      SubStage.create(name: "Caixaria", stage_id: 3) 
      SubStage.create(name: "Impermeabilização", stage_id: 3) 
      

    Stage.create(id:4, name: 'Alvenaria e Estrutura')
      SubStage.create(name: "Material Básico", stage_id: 4) 
      SubStage.create(name: "Ferragem", stage_id: 4) 
      SubStage.create(name: "Caixaria", stage_id: 4)
      SubStage.create(name: "Preparação Elétrica Básica", stage_id: 4) 
      SubStage.create(name: "Pré-instalação Condicionador de Ar", stage_id: 4) 
      SubStage.create(name: "Material Básico", stage_id: 4) 
      

    Stage.create(id:5, name: 'Cobertura')
       SubStage.create(name: "Serviços Básicos", stage_id: 5) 
       SubStage.create(name: "Ferragem", stage_id: 5) 
       SubStage.create(name: "Caixaria", stage_id: 5) 
       SubStage.create(name: "Preparação Elétrica Básica", stage_id: 5) 
       SubStage.create(name: "Telhamento", stage_id: 5) 
       SubStage.create(name: "Serralheria", stage_id: 5) 
       
       
    Stage.create(id:6, name: 'Hidráulica')
      SubStage.create(name: "Esgoto", stage_id: 6) 
      SubStage.create(name: "Água Fria", stage_id: 6) 
      SubStage.create(name: "Outros", stage_id: 6) 


    Stage.create(id:7, name: 'Reboco, Contrapiso e Enquadramentos')
      SubStage.create(name: "Serviços Básicos", stage_id: 7) 
      SubStage.create(name: "Impermeabilização", stage_id: 7) 
      SubStage.create(name: "Outros", stage_id: 7) 

    Stage.create(id:8, name: 'Fechamentos')
      SubStage.create(name: "Parapeito", stage_id: 8) 
      SubStage.create(name: "Soleira", stage_id: 8)
      SubStage.create(name: "Esquadrias de Madeira", stage_id: 8)  
      SubStage.create(name: "Vidraçaria", stage_id: 8) 
      
    Stage.create(id:9, name: 'Elétrica, Telefonia, Rede, Tv a Cabo')
      SubStage.create(name: "Quadro de Distribuição", stage_id: 9) 
      SubStage.create(name: "Preparação Elétrica Básica", stage_id: 9) 
      SubStage.create(name: "Fiação", stage_id: 9)
      SubStage.create(name: "Aterramento", stage_id: 9)
      SubStage.create(name: "Tomadas e Interruptores", stage_id: 9)
      SubStage.create(name: "Padrão de Energia - Ligação/Rede", stage_id: 9)    
      SubStage.create(name: "Outros", stage_id: 9) 

    Stage.create(id:10,  name: 'Acabamentos')
      SubStage.create(name: "Revestimento Cerâmico", stage_id: 10) 
      SubStage.create(name: "Revestimento Amadeirado", stage_id: 10) 
      SubStage.create(name: "Preparação de Parede", stage_id: 10) 
      SubStage.create(name: "Forro", stage_id: 10) 
      SubStage.create(name: "Rodapé", stage_id: 10) 
      SubStage.create(name: "Louças e acessórios banheiro/cozinha", stage_id: 10) 
      SubStage.create(name: "Pintura e Preparação", stage_id: 10)
      SubStage.create(name: "Iluminação", stage_id: 10)   

  end

  def down
    Stage.delete_all
  end
end
