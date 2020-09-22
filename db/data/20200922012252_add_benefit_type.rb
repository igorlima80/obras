class AddBenefitType < SeedMigration::Migration
  def up
    BenefitType.create!(name: "Auxílio Refeição")
    BenefitType.create!(name: "Vale Transporte")
    BenefitType.create!(name: "Plano de Saúde")
  end

  def down
    BenefitType.delete_all
  end
end
