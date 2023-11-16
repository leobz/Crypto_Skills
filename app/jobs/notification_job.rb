class NotificationJob < ActiveJob::Base
    # Automatically retry jobs that encountered a deadlock
    # retry_on ActiveRecord::Deadlocked
  
    # Most jobs are safe to ignore if the underlying records are no longer available
    # discard_on ActiveJob::DeserializationError

    def notify_welcome(candidate)
      CandidateMailer.with(candidate: candidate).welcome_email.deliver_now
    end


    def notify_new_jobs(candidate)
      candidate = Candidate.all.last
      alert = Alert.where(user_id: candidate.id).first
      keyword = alert.keywords.first
      jobs = Job.where("title ILIKE ? OR company ILIKE ?", "%#{keyword}%", "%#{keyword}%")

      CandidateMailer.with(candidate: candidate, jobs: jobs).new_jobs_email.deliver_now
    end
  end
  