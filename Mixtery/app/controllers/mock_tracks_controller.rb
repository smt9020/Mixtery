class MockTracksController < ApplicationController
  before_action :set_mock_track, only: [:show, :edit, :update, :destroy]

  # GET /mock_tracks
  # GET /mock_tracks.json
  def index
    @mock_tracks = MockTrack.all
  end

  # GET /mock_tracks/1
  # GET /mock_tracks/1.json
  def show
  end

  # GET /mock_tracks/new
  def new
    @mock_track = MockTrack.new
  end

  # GET /mock_tracks/1/edit
  def edit
  end

  # POST /mock_tracks
  # POST /mock_tracks.json
  def create
    @mock_track = MockTrack.new(mock_track_params)

    respond_to do |format|
      if @mock_track.save
        format.html { redirect_to @mock_track, notice: 'Mock track was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mock_track }
      else
        format.html { render action: 'new' }
        format.json { render json: @mock_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mock_tracks/1
  # PATCH/PUT /mock_tracks/1.json
  def update
    respond_to do |format|
      if @mock_track.update(mock_track_params)
        format.html { redirect_to @mock_track, notice: 'Mock track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mock_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mock_tracks/1
  # DELETE /mock_tracks/1.json
  def destroy
    @mock_track.destroy
    respond_to do |format|
      format.html { redirect_to mock_tracks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mock_track
      @mock_track = MockTrack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mock_track_params
      params.require(:mock_track).permit(:name, :track_id)
    end
end
