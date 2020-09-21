class AddWorkplaces < SeedMigration::Migration
  def up
    Workplace.create name: 'Alphaville'
    Workplace.create name: 'Terras Alphaville'
    Workplace.create name: 'Verana'
    Workplace.create name: 'Aldebaran'
  end

  def down
    Workplace.delete_all
  end
end
