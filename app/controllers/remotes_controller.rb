class RemotesController < ApplicationController
  before_action :set_remote, only: [:show, :edit, :update, :destroy]

  # GET /remotes
  # GET /remotes.json
  def index
    @remotes = Remote.all
  end

  # GET /remotes/1
  # GET /remotes/1.json
  def show
  end

  # GET /remotes/new
  def new
    @remote = Remote.new
  end

  # GET /remotes/1/edit
  def edit
  end

  # POST /remotes
  # POST /remotes.json
  def create
    @remote = Remote.new(remote_params)

    respond_to do |format|
      if @remote.save
        format.html { redirect_to @remote, notice: 'Remote was successfully created.' }
        format.json { render :show, status: :created, location: @remote }
      else
        format.html { render :new }
        format.json { render json: @remote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remotes/1
  # PATCH/PUT /remotes/1.json
  def update
    respond_to do |format|
      if @remote.update(remote_params)
        format.html { redirect_to @remote, notice: 'Remote was successfully updated.' }
        format.json { render :show, status: :ok, location: @remote }
      else
        format.html { render :edit }
        format.json { render json: @remote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remotes/1
  # DELETE /remotes/1.json
  def destroy
    @remote.destroy
    respond_to do |format|
      format.html { redirect_to remotes_url, notice: 'Remote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remote
      @remote = Remote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def remote_params
      params.require(:remote).permit(:name, :description)
    end
end
