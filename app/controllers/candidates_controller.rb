class CandidatesController < ApplicationController
  before_action :authenticate_candidate!

  def profile
    @alert = Alert.new
    @alerts = Alert.where(user_id: current_candidate.id)
  end
end