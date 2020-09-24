class AddMenu < SeedMigration::Migration
  def up
    MenuItem.create name: 'Pessoas', icon: 'fab fa-black-tie', link: 'people_path', position: 1, target: '_self', permission: 'manage', permission_check: 'Person', menu_item_id: nil, published: true, active_test: "controller_name == 'people'"     
    
    admin = MenuItem.create name: 'Admin', icon: 'fas fa-lock', link: '#', position: 100, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
    MenuItem.create name: 'Usuários', icon: 'fas fa-users', link: 'users_path', position: 1, target: '_self', permission: 'manage', permission_check: 'User', menu_item: admin, active_test: "controller_name == 'users'", published: true
    MenuItem.create name: 'Estados', icon: 'fas fa-map', link: 'states_path', position: 2, target: '_self', permission: 'manage', permission_check: 'State', menu_item: admin, active_test: "controller_name == 'states'", published: true
    MenuItem.create name: 'Países', icon: 'fas fa-globe-americas', link: 'countries_path', position: 3, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'countries'", published: true
    MenuItem.create name: 'Cidades', icon: 'fas fa-map-marked', link: 'cities_path', position: 4, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'cities'", published: true
    MenuItem.create name: 'Cargos/Carreiras', icon: 'fas fa-briefcase', link: 'places_path', position: 5, target: '_self', permission: 'manage', permission_check: 'Places', menu_item: admin, active_test: "controller_name == 'places'", published: true
    MenuItem.create name: 'Tipos de Telefone', icon: 'fa fa-phone', link: 'phone_types_path', position: 6, target: '_self', permission: 'manage', permission_check: 'PhoneType', menu_item: admin, active_test: "controller_name == 'phone_types'", published: true
    MenuItem.create name: 'Locais de Lotação', icon: 'fas fa-building', link: 'workplaces_path', position: 7, target: '_self', permission: 'manage', permission_check: 'Workplaces', menu_item: admin, active_test: "controller_name == 'workplaces'", published: true
    MenuItem.create name: 'Deduções', icon: 'fas fa-percentage', link: 'deductions_path', position: 8, target: '_self', permission: 'manage', permission_check: 'deductions', menu_item: admin, active_test: "controller_name == 'deductions'", published: true
    MenuItem.create name: 'Taxas', icon: 'fas fa-money-check-alt', link: 'taxes_path', position: 8, target: '_self', permission: 'manage', permission_check: 'taxes', menu_item: admin, active_test: "controller_name == 'taxes'", published: true
    MenuItem.create name: 'Configurações', icon: 'fas fa-cogs', link: 'settings_path', position: 9, target: '_self', permission: 'manage', permission_check: 'Kinships', menu_item: admin, active_test: "controller_name == 'settings'", published: true
    MenuItem.create name: 'Menu', icon: 'fas fa-bars', link: 'menu_items_path', position: 99, target: '_self', permission: 'manage', permission_check: 'MenuItem', menu_item: admin, active_test: "controller_name == 'menu_items'", published: true
  end

  def down
    MenuItem.delete_all
  end
end
