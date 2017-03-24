class SupaagentsController < ApplicationController
  before_action :set_supaagent, only: [:show, :update, :destroy]
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["LOGINPASSWORD"], only: [:destroy, :index,:show]
  
  
 
  # GET /supaagents
  # GET /supaagents.json
  def index
    # @supaagents = Supaagent.all
    @tasks_grid = initialize_grid(Supaagent)

  end

  # GET /supaagents/1
  # GET /supaagents/1.json
  def show
  end

  # GET /supaagents/new
  def new
    @supaagent = Supaagent.new
  end

  # GET /supaagents/1/edit Will come refactor it soon 23/3/2017
  def edit
    begin
    @supaagent = Supaagent.find(params[:id]) 
    rescue ActiveRecord::RecordNotFound
    redirect_to action: "index"
  end
  end

  # POST /supaagents
  # POST /supaagents.json
  def create
    @supaagent = Supaagent.new(supaagent_params)

    respond_to do |format|
      if @supaagent.save
        format.html { redirect_to action: "thank_you", notice: 'Supaagent was successfully created.' }
        format.json { render :show, status: :created, location: @supaagent }
      else
        format.html { render :new }
        format.json { render json: @supaagent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supaagents/1
  # PATCH/PUT /supaagents/1.json
  def update
    respond_to do |format|
      if @supaagent.update(supaagent_params)
        format.html { redirect_to edit_supaagent_path(@supaagent.id+1), notice: 'Supaagent was successfully updated.' }
        format.json { render :show, status: :ok, location: @supaagent }
      else
        format.html { render :edit }
        format.json { render json: @supaagent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supaagents/1
  # DELETE /supaagents/1.json
  def destroy
    @supaagent.destroy
    respond_to do |format|
      format.html { redirect_to supaagents_url, notice: 'Supaagent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supaagent
      @supaagent = Supaagent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supaagent_params
      params.require(:supaagent).permit(:applicationid, :name, :email, :idimage, :validation, :idnumber, :bankaccount, :bankaddress, :bankname, :bankswift, :referralid, :terms, :bankbranch, :status)
    end
    

    
end
