task :import_blocks => :environment do
  CSV.foreach('Blocks.csv', :headers => true) do |row|
    Ipblock.create!(row.to_hash)
  end
end

task :import_locations => :environment do
  CSV.foreach('Location.csv', :headers => true) do |row|
    Location.create!(row.to_hash)
  end
end