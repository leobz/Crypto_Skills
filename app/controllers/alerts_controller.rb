class AlertsController < ApplicationController
    # POST /alerts or /alerts.json
    def create
        @alert = Alert.new(alert_params)

        respond_to do |format|
        if @alert.save
            format.html { redirect_to candidates_profile_url, notice: "Alert was successfully created." }
            format.json { render :show, status: :created, location: @alert }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @alert.errors, status: :unprocessable_entity }
        end
        end
    end

    # DELETE /alerts/1 or /alerts/1.json
    def destroy
        Alert.find(params[:id]).destroy

        respond_to do |format|
            format.html { redirect_to candidates_profile_url, notice: "Alert was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    def show
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert
      @alert = Alert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alert_params        
        {user_id: params.fetch(:user_id), keyword: params.fetch(:keyword), frequency: params.fetch(:frequency)}
    end
end
  