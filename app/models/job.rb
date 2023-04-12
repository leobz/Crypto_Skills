class Job < ApplicationRecord
    # Uncomment if you use companies table
    # belongs_to :company
    enum location_mode: [ :REMOTE, :ON_SITE, :HYBRID]
end
