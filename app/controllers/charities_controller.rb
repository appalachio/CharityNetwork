class CharitiesController < ApplicationController
  before_action :set_charity, only: %i[ show edit update destroy ]

  # GET /charities or /charities.json
  def index
    @charities = Charity.all
  end

  # GET /charities/1 or /charities/1.json
  def show
    # If the user uses an old charity URL, redirect to the latest URL and show a flash alert
    if request.path != charity_path(@charity)
      flash.alert = "The charity once at #{request.url} has been updated, and is now located at \
          #{charity_url(@charity)}. You have been redirected."
      redirect_to @charity, status: :moved_permanently and return
    end
  end

  # GET /charities/new
  def new
    authenticate_user!

    @charity = Charity.new
  end

  # GET /charities/1/edit
  def edit
    authenticate_user!

    # If the user uses an old edit charity URL, redirect to the latest URL and show a flash alert
    if request.path != edit_charity_path(@charity)
      flash.alert = "The charity once at #{request.url} has been updated, and is now located at \
          #{edit_charity_url(@charity)}. You have been redirected."
      redirect_to edit_charity_path(@charity), status: :moved_permanently and return
    end
  end

  # POST /charities or /charities.json
  def create
    authenticate_user!

    @charity = Charity.new(charity_params)
    @charity.users << current_user

    respond_to do |format|
      if @charity.save
        format.html { redirect_to @charity, notice: "Charity was successfully created." }
        format.json { render :show, status: :created, location: @charity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charities/1 or /charities/1.json
  def update
    authenticate_user!

    respond_to do |format|
      if @charity.update(charity_params)
        format.html { redirect_to @charity, notice: "Charity was successfully updated." }
        format.json { render :show, status: :ok, location: @charity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charities/1 or /charities/1.json
  def destroy
    authenticate_user!

    @charity.destroy!

    respond_to do |format|
      format.html { redirect_to charities_path, status: :see_other, notice: "Charity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.friendly.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def charity_params
      params.expect(charity: [ :name, :registration_number, :description, :logo, :contact_info ])
    end
end
