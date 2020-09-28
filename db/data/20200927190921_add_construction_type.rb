class AddConstructionType < SeedMigration::Migration
  def up
    ConstructionType.create name: 'Sobrado'
  end

  def down
    ConstructionType.delete_all
  end
end
