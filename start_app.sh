rails db:create
rails db:migrate
rails db:seed
echo "Cleaning Cache..."
rake assets:clean
rake assets:clobber
rake tmp:clear
echo "Running Sidekiq in the background..."
REDIS_URL="redis://127.0.0.1:6379/0" bundle exec sidekiq -e development -C config/sidekiq.yml &
rails server -b 0.0.0.0
