class Candidate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  def notify_new_jobs()
    alerts().each do |alert|
      jobs = Job.where("title ILIKE ? OR company ILIKE ?", "%#{alert.keyword}%", "%#{alert.keyword}%")

      if jobs.size > 0
        CandidateMailer.with(candidate: self, jobs: jobs).new_jobs_email.deliver_now
      end
    end
  end

  def alerts
    Alert.where(user_id: self.id)
  end
end
