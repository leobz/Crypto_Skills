echo "Setting DB..."
RAILS_ENV=production rake db:create db:migrate db:seed

echo "Cleaning Cache..."
RAILS_ENV=production rake assets:clean
RAILS_ENV=production rake assets:clobber
RAILS_ENV=production rake tmp:clear

echo "Precompiling Assets..."
RAILS_ENV=production rake assets:precompile

echo "Running Sidekiq in the background..."
bundle exec sidekiq -e production -C config/sidekiq.yml &

echo "Running Rails server..."
RAILS_ENV=production rails server -b 0.0.0.0