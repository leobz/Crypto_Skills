class NewJobsNotificationJob
  include Sidekiq::Job

  def perform(*args)
    Candidate.all.each do |candidate|
      candidate.notify_new_jobs()
    end
  end
end
