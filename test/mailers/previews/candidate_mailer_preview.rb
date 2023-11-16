# Preview all emails at http://localhost:3000/rails/mailers/candidate_mailer
class CandidateMailerPreview < ActionMailer::Preview
    def new_jobs_email
        candidate = Candidate.all.last
        alert = Alert.where(user_id: candidate.id).first
        keyword = "Bitcoin"
        jobs = Job.where("title ILIKE ? OR company ILIKE ?", "%#{keyword}%", "%#{keyword}%")

        CandidateMailer.with(candidate: candidate, jobs: jobs).new_jobs_email.deliver_now
    end
end
