class Job < ApplicationRecord
    belongs_to :company
    enum location_mode: [ :REMOTE, :ON_SITE, :HYBRID]
end
