Rails.application.config.to_prepare do
  admin = User.new(email: "admin@admin.com", password: ENV["ADMIN_PASSWORD"])
  admin.save
end