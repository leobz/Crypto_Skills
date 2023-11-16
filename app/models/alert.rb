class Alert < ApplicationRecord
    enum frequency: [ :DAILY, :WEEKLY, :MONTHLY]
end