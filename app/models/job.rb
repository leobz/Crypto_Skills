class Job < ApplicationRecord
    # validates :company, :company_logo, :title, :description, :website, :presence => true
    enum location_mode: [ :REMOTE, :ON_SITE, :HYBRID]
    enum modality: [:FULL_TIME, :PART_TIME, :FREELANCE, :INTERNSHIP]
    enum salary_timeframe: [:ANNUALY, :MONTHLY, :HOURLY]
    enum currency: [:USD, :EUR, :GBP, :AUD, :CAD, :NZD, :ARS, :BTC]
    enum category: [:ART, :COMPUTER_SCIENCE, :ENGLISH_STUDIES,
		:FINANCE, :INFORMATION_SYSTEMS, :ACCOUNTING, :BUSINESS, :BUSINESS_ADMINISTRATION,
	 	:EDUCATION, :MATHEMATICS, :FHYSICS, :SCIENCE, :STATISTICS_AND_DECISION_THEORY, :LAW, :OTHER]
    has_one_attached :company_logo
    has_many :invoice
    # Uncomment if you use companies table
    # belongs_to :company1
end
