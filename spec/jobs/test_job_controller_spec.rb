require "rails_helper"

RSpec.describe "Jobs Index", type: :request do
    before do
        # Category: FINANCE / Modality: PART_TIME / Location: Argentina / Location Mode: ON_SITE
        Job.create(
            title: "Financial Advisor",
            description: "Financial advisor position for financial planning.",
            website: "https://example.com/financial-advisor",
            company: "FinancePro",
            company_website: "https://financepro.com/",
            company_description: "FinancePro provides financial advice.",
            modality: "PART_TIME",
            location: "Argentina",
            location_mode: "ON_SITE",
            category: "FINANCE",
            created_at: Time.now,
            published: true
        )

        # Category: INFORMATION_SYSTEMS / Modality: FULL_TIME / Location: United States / Location Mode: REMOTE
        Job.create(
            title: "Database Administrator",
            description: "Database administrator position for managing databases.",
            website: "https://example.com/database-administrator",
            company: "DataTech",
            company_website: "https://datatech.com/",
            company_description: "DataTech specializes in data management.",
            modality: "FULL_TIME",
            location: "United States",
            location_mode: "REMOTE",
            category: "INFORMATION_SYSTEMS",
            created_at: Time.now,
            published: true
        )

        Job.all.each {|j| JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/nintendo.jpg"))}
    end


    scenario "All jobs" do
        get("/")
        expect(response).to have_http_status(:success)
        expect(response.body).to match("Financial Advisor")
        expect(response.body).to match("Database Administrator")
    end

    scenario "Filter by category" do
        get("/", params: { keyword: 'Financial' })
        expect(response.body).to match("Financial Advisor")

        expect(response.body).to_not match("Database Administrator")
    end

    scenario "Filter by modality" do
        get("/", params: { modality: 'PART_TIME' })
        expect(response.body).to match("Financial Advisor")

        expect(response.body).to_not match("Database Administrator")
    end

    scenario "Filter by location" do
        get("/", params: { location: 'United State' })
        expect(response.body).to match("Database Administrator")

        expect(response.body).to_not match("Financial Advisor")
    end

    scenario "Filter by remote only" do
        get("/", params: { remote_only: 'on' })
        expect(response.body).to match("Database Administrator")

        expect(response.body).to_not match("Financial Advisor")
    end
end