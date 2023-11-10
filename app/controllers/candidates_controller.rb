class CandidatesController < ApplicationController
    def profile
      @alert = Alert.new
      @alerts = Alert.where(user_id: current_candidate.id)
    end
  end