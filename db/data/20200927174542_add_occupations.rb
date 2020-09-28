class AddOccupations < SeedMigration::Migration
  def up
    Occupation.create name: 'Engenheiro'
    Occupation.create name: 'Arquiteto'
    Occupation.create name: 'Mestre de Obras'
    Occupation.create name: 'Pedreiro'
    Occupation.create name: 'Servente'
  end

  def down
    Occupation.delete_all
  end
end
