rails db:create
rails db:migrate
rails db:seed
echo "Running Sidekiq in the background..."
REDIS_URL="redis://127.0.0.1:6379/0" bundle exec sidekiq -e development -C config/sidekiq.yml &
rails server -b 0.0.0.0
