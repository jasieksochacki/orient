class AthletesController < ApplicationController
  layout "dusiolek"

  before_action :set_athlete, only: [:show]

  # GET /athletes
  # GET /athletes.json
  def index
    @event = Event.find(params[:event_id])
    @athletes = @event.athletes
  end

  # GET /athletes/1
  # GET /athletes/1.json
  def show
    @event = @athlete.event
  end

  # GET /athletes/new
  def new
    @event = Event.find(params[:event_id])
    @routes = @event.routes
    @athlete = Athlete.new(event_id: @event.id)
  end

  # POST /athletes
  # POST /athletes.json
  def create
    @athlete = Athlete.new(athlete_params)
    @event = @athlete.event
    @routes = @event.routes
    respond_to do |format|
      if @athlete.save
        format.html { redirect_to @athlete, notice: 'Zawodnik został stworzony' }
        format.json { render :show, status: :created, location: @athlete }
      else
        format.html { render :new }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athlete_params
      params.require(:athlete).permit(:first_name, :last_name, :gender, :birthdate, :city, :route_id, :phone,
                                      :team, :email, :terms_accepted, :gdpr_accepted, :event_id)


    end
end
