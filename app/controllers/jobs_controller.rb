class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy ]
  before_action :authenticate_request, only: %i[ edit update destroy]
  after_action :allow_iframe
  skip_before_action :verify_authenticity_token

  # GET /jobs or /jobs.json
  def index
    @jobs = Job.where("published = true")

    # Filters
    if params[:modality] and params[:modality].size > 1
      @jobs = @jobs.where(modality: params[:modality])
    end

    if params[:category] and params[:category].size > 1
      @jobs = @jobs.where(category: params[:category])
    end

    if params[:remote_only] == "on"
      @jobs = @jobs.where(location_mode: "REMOTE")
    end

    @jobs = @jobs.where("title ILIKE ? OR company ILIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    @jobs = @jobs.where("location ILIKE ?", "%#{params[:location]}%")
    @jobs = @jobs.order("created_at DESC")

    @jobs
  end

  # GET /jobs/1 or /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs or /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to job_url(@job), notice: "Job was successfully created." }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to job_url(@job), notice: "Job was successfully updated." }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    @job.invoice.clear
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_params
      params.require(:job).permit(
        :title, :modality, :description, :salary_timeframe, :currency, :min_salary, :max_salary, :website, :location, 
        :location_mode, :skills, :category, :email, :company, :company_logo, :company_description, :company_website
      )
    end

    def authenticate_request
      redirect_to root_url unless User.current_user(session) || Job.find(params[:id]).published == false
    end

    def allow_iframe
      response.headers.except! 'X-Frame-Options'
    end
end
