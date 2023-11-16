class CandidateMailer < ApplicationMailer
    default from: 'notifications@example.com'
    helper JobsHelper


    def welcome_email
        @candidate = params[:candidate]
        @url  = 'http://example.com/login'
        mail(to: @candidate.email, subject: 'Welcome to My Awesome Site')
    end

    def new_jobs_email
        @candidate = params[:candidate]
        @jobs = params[:jobs]

        mail(to: @candidate.email, subject: 'New Jobs Alert')
    end
end
