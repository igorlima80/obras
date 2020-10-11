class AddStages < SeedMigration::Migration
  def up
    Stage.create(id:1, name: "Projetos e Aprovações") 
      SubStage.create(id: 1,name: "Projetos", stage_id: 1) 
      SubStage.create(id: 2, name: "Aprovação Legal", stage_id: 1)
      SubStage.create(id: 3, name: "Outros", stage_id: 1)  

    Stage.create(id:2, name: 'Infra Básica')
      SubStage.create(id: 4, name: "Terraplanagem e Escavações", stage_id: 2)         
        TaskType.create(name:"Corte e Aterro", sub_stage_id: 4 )
        TaskType.create(name:"Escavação Manual para Bloco de Coroamento", sub_stage_id: 4 )
        TaskType.create(name:"Lastro de Vala com Preparo de Fundo", sub_stage_id: 4 )  
      SubStage.create(id: 5, name: "Instalação Barracão Provisório", stage_id: 2)
        TaskType.create(name:"Cavalete de ligação de água na rede pública " , sub_stage_id: 5 ) 
      SubStage.create(id: 6, name: "Energia Provisória", stage_id: 2) 
        TaskType.create(name:"Instalação de Energia Provisória" , sub_stage_id: 6 )    
      SubStage.create(id: 7, name: "Ligação de Esgoto", stage_id: 2) 
        TaskType.create(name:"Instalação de Esgoto" , sub_stage_id: 7 )
    Stage.create(id:3, name: 'Fundação')
      SubStage.create(id: 8, name: "Material Básico", stage_id: 3) 
        TaskType.create(name:"Locação Convencional de Obra", sub_stage_id: 8)
      SubStage.create(id: 9, name: "Ferragem", stage_id: 3) 
        TaskType.create(name:"Armação de Bloco, Viga Baldrame", sub_stage_id: 9 )
        TaskType.create(name:"Fabricação, Montagem e Desmontagem de Forma", sub_stage_id: 9) 
      SubStage.create(id: 10, name: "Caixaria", stage_id: 3) 
        TaskType.create(name:"Concretagem de Blocos de Coroamento e Vigas", sub_stage_id: 10)       
        TaskType.create(name:"Reaterro Manual Apiloado com Soquete", sub_stage_id: 10)
        TaskType.create(name:"Alvenaria de Embasamento em Tijolos Cerâmicos", sub_stage_id: 10)
      SubStage.create(id: 11, name: "Impermeabilização", stage_id: 3) 
        TaskType.create(name:"Impermeabilização de Superfície com Emulsão", sub_stage_id: 11)      

    Stage.create(id:4, name: 'Alvenaria e Estrutura')
      SubStage.create(id: 12, name: "Material Básico", stage_id: 4) 
      SubStage.create(id: 13, name: "Ferragem", stage_id: 4) 
      SubStage.create(id: 14, name: "Caixaria", stage_id: 4)
      SubStage.create(id: 15,name: "Preparação Elétrica Básica", stage_id: 4) 
      SubStage.create(id: 16, name: "Pré-instalação Condicionador de Ar", stage_id: 4) 
      SubStage.create(id: 17, name: "Material Básico", stage_id: 4) 
      

    Stage.create(id:5, name: 'Cobertura')
       SubStage.create(id: 18, name: "Serviços Básicos", stage_id: 5) 
       SubStage.create(id: 19, name: "Ferragem", stage_id: 5) 
       SubStage.create(id: 20, name: "Caixaria", stage_id: 5) 
       SubStage.create(id: 21, name: "Preparação Elétrica Básica", stage_id: 5) 
       SubStage.create(id: 22, name: "Telhamento", stage_id: 5) 
       SubStage.create(id: 23, name: "Serralheria", stage_id: 5) 
       
       
    Stage.create(id:6, name: 'Hidráulica')
      SubStage.create(id: 24, name: "Esgoto", stage_id: 6) 
      SubStage.create(id: 25, name: "Água Fria", stage_id: 6) 
      SubStage.create(id: 26, name: "Outros", stage_id: 6) 


    Stage.create(id:7, name: 'Reboco, Contrapiso e Enquadramentos')
      SubStage.create(id: 27, name: "Serviços Básicos", stage_id: 7) 
      SubStage.create(id: 28, name: "Impermeabilização", stage_id: 7) 
      SubStage.create(id: 29, name: "Outros", stage_id: 7) 

    Stage.create(id:8, name: 'Fechamentos')
      SubStage.create(id: 30, name: "Parapeito", stage_id: 8) 
      SubStage.create(id: 31, name: "Soleira", stage_id: 8)
      SubStage.create(id: 32, name: "Esquadrias de Madeira", stage_id: 8)  
      SubStage.create(id: 33, name: "Vidraçaria", stage_id: 8) 
      
    Stage.create(id:9, name: 'Elétrica, Telefonia, Rede, Tv a Cabo')
      SubStage.create(id: 34, name: "Quadro de Distribuição", stage_id: 9) 
      SubStage.create(id: 35, name: "Preparação Elétrica Básica", stage_id: 9) 
      SubStage.create(id: 36, name: "Fiação", stage_id: 9)
      SubStage.create(id: 37, name: "Aterramento", stage_id: 9)
      SubStage.create(id: 38, name: "Tomadas e Interruptores", stage_id: 9)
      SubStage.create(id: 39, name: "Padrão de Energia - Ligação/Rede", stage_id: 9)    
      SubStage.create(id: 40, name: "Outros", stage_id: 9) 

    Stage.create(id:10,  name: 'Acabamentos')
      SubStage.create(id: 41, name: "Revestimento Cerâmico", stage_id: 10) 
      SubStage.create(id: 42, name: "Revestimento Amadeirado", stage_id: 10) 
      SubStage.create(id: 43, name: "Preparação de Parede", stage_id: 10) 
      SubStage.create(id: 44, name: "Forro", stage_id: 10) 
      SubStage.create(id: 45, name: "Rodapé", stage_id: 10) 
      SubStage.create(id: 46, name: "Louças e acessórios banheiro/cozinha", stage_id: 10) 
      SubStage.create(id: 47, name: "Pintura e Preparação", stage_id: 10)
      SubStage.create(id: 48, name: "Iluminação", stage_id: 10)   

  end

  def down
    Stage.delete_all
  end
end
