namespace :dev do
  task :setup do
    cp 'config/database.yml.example', 'config/database.yml'
    cp 'config/secrets.yml.example', 'config/secrets.yml'
  end
end
