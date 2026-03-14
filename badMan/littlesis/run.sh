docker compose up --build
# in another shell (first run / after schema changes)
docker compose exec app bundle exec rails db:prepare
