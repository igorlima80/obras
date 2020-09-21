class AddPlaces < SeedMigration::Migration
  def up
    Place.create name: 'Engenheiro'
    Place.create name: 'Arquiteto'
    Place.create name: 'Mestre de Obras'
    Place.create name: 'Pedreiro'
    Place.create name: 'Servente'
  end

  def down
    Place.roots.delete_all
  end
end
