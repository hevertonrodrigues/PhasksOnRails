class TaskFilesController < ApplicationController
  before_action :set_task_file, only: [:show, :destroy]

  # GET /task_files
  # GET /task_files.json
  def index
    @task_files = TaskFile.paginate(:page => params[:page], :per_page => 10)
  end

  # POST /task_files
  # POST /task_files.json
  def create
    @task_file = TaskFile.new(task_file_params)

    respond_to do |format| 
      if @task_file.save
        format.html {
          render :json => [@task_file.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json { render json: { files: [@task_file.to_jq_upload, @task_file] }, status: :created, location: @task_file }
      else
        format.html { render action: "new" }
        format.json { render json: @task_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /task_files/1
  # GET /task_files/1.json
  def show
  end

  # DELETE /task_files/1
  # DELETE /task_files/1.json
  def destroy
    @task_file.destroy
    respond_to do |format|
      format.html { redirect_to task_files_url }
      format.json { render json: { "success" => "true" } }
    end
  end

  private

    def set_task_file
      @task_file = TaskFile.find(params[:id])
    end
    def task_file_params
      params.require(:task_file).permit(:file, :task_id)
    end
end
