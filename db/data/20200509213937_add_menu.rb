class AddMenu < SeedMigration::Migration
  def up
    profissional = MenuItem.create name: 'Profissionais', icon: 'fab fa-hard-hat', link: '#', position: 1, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Pessoas', icon: 'fas fa-user-tie', link: 'people_path', position: 2, target: '_self', permission: 'manage', permission_check: 'Person', menu_item: profissional, published: true, active_test: "controller_name == 'people'"  
      MenuItem.create name: 'Cargos/Carreiras', icon: 'fas fa-briefcase', link: 'occupations_path', position:3, target: '_self', permission: 'manage', permission_check: 'Occupation', menu_item: profissional, active_test: "controller_name == 'occupations'", published: true
      MenuItem.create name: 'Deduções', icon: 'fas fa-percentage', link: 'deductions_path', position: 4, target: '_self', permission: 'manage', permission_check: 'deductions', menu_item: profissional, active_test: "controller_name == 'deductions'", published: true
      MenuItem.create name: 'Taxas', icon: 'fas fa-money-check-alt', link: 'taxes_path', position: 5, target: '_self', permission: 'manage', permission_check: 'taxes', menu_item: profissional, active_test: "controller_name == 'taxes'", published: true
      #MenuItem.create name: 'Benefícios', icon: 'fas fa-money-check-alt', link: 'benefits_path', position: 5, target: '_self', permission: 'manage', permission_check: 'benefits', menu_item: profissional, active_test: "controller_name == 'benefits'", published: true

    planning = MenuItem.create name: 'Planejamento', icon: 'fas fa-project-diagram', link: '#', position: 2, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Etapas', icon: 'fas fa-bars', link: 'stages_path', position: 1, target: '_self', permission: 'manage', permission_check: 'Stages', menu_item: planning, active_test: "controller_name == 'stages'", published: true
      MenuItem.create name: 'Sub-Etapas', icon: 'fas fa-tasks', link: 'sub_stages_path', position: 2, target: '_self', permission: 'manage', permission_check: 'SubStages', menu_item: planning, active_test: "controller_name == 'sub_stages'", published: true
      MenuItem.create name: 'Tipos de Construções', icon: 'fas fa-landmark', link: 'construction_types_path', position: 3, target: '_self', permission: 'manage', permission_check: 'ConstructionType', menu_item: planning, published: true, active_test: "controller_name == 'construction_types'"     
    
    construcao = MenuItem.create name: 'Gestão de Obras', icon: 'fas fa-archway', link: '#', position: 4, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Locais de Trabalho', icon: 'fas fa-building', link: 'workplaces_path', position: 1, target: '_self', permission: 'manage', permission_check: 'Workplaces', menu_item: construcao, active_test: "controller_name == 'workplaces'", published: true     
      MenuItem.create name: 'Construções', icon: 'fa fa-store-alt', link: 'constructions_path', position: 4, target: '_self', permission: 'manage', permission_check: 'Construction', menu_item: construcao, published: true, active_test: "controller_name == 'constructions'"     
      
    compra = MenuItem.create name: 'Compras e Serviços', icon: 'fas fa-shopping-cart', link: '#', position: 5, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Fornecedores', icon: 'fa fa-handshake', link: 'providers_path', position: 6, target: '_self', permission: 'manage', permission_check: 'Provider', menu_item: compra, published: true, active_test: "controller_name == 'providers'"     
      MenuItem.create name: 'Categorias de Material', icon: 'fa fa-tools', link: 'material_categories_path', position: 7, target: '_self', permission: 'manage', permission_check: 'MaterialCategory', menu_item: compra, published: true, active_test: "controller_name == 'material_categories'"     
      MenuItem.create name: 'Materiais', icon: 'fa fa-shopping-basket', link: 'materials_path', position: 8, target: '_self', permission: 'manage', permission_check: 'Material', menu_item: compra, published: true, active_test: "controller_name == 'materials'"     
      MenuItem.create name: 'Compras', icon: 'fa fa-cart-arrow-down', link: 'purchases_path', position: 9, target: '_self', permission: 'manage', permission_check: 'Purchase', menu_item: compra, published: true, active_test: "controller_name == 'purchases'"     
    
    admin = MenuItem.create name: 'Admin', icon: 'fas fa-lock', link: '#', position: 100, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Usuários', icon: 'fas fa-users', link: 'users_path', position: 1, target: '_self', permission: 'manage', permission_check: 'User', menu_item: admin, active_test: "controller_name == 'users'", published: true
      MenuItem.create name: 'Estados', icon: 'fas fa-map', link: 'states_path', position: 2, target: '_self', permission: 'manage', permission_check: 'State', menu_item: admin, active_test: "controller_name == 'states'", published: true
      MenuItem.create name: 'Países', icon: 'fas fa-globe-americas', link: 'countries_path', position: 3, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'countries'", published: true
      MenuItem.create name: 'Cidades', icon: 'fas fa-map-marked', link: 'cities_path', position: 4, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'cities'", published: true
      MenuItem.create name: 'Bancos', icon: 'fas fa-university', link: 'banks_path', position: 6, target: '_self', permission: 'manage', permission_check: 'Bank', menu_item: admin, active_test: "controller_name == 'banks'", published: true
      MenuItem.create name: 'Tipos de Telefone', icon: 'fa fa-phone', link: 'phone_types_path', position: 7, target: '_self', permission: 'manage', permission_check: 'PhoneType', menu_item: admin, active_test: "controller_name == 'phone_types'", published: true
      
      
      MenuItem.create name: 'Configurações', icon: 'fas fa-cogs', link: 'settings_path', position: 9, target: '_self', permission: 'manage', permission_check: 'Kinships', menu_item: admin, active_test: "controller_name == 'settings'", published: true
      MenuItem.create name: 'Menu', icon: 'fas fa-bars', link: 'menu_items_path', position: 99, target: '_self', permission: 'manage', permission_check: 'MenuItem', menu_item: admin, active_test: "controller_name == 'menu_items'", published: true
  end

  def down
    MenuItem.delete_all
  end
end
