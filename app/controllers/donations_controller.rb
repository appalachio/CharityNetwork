class DonationsController < ApplicationController
  before_action :set_donation, only: %i[ show edit update destroy ]

  # GET /donations or /donations.json
  def index
    @donations = Donation.all
  end

  # GET /donations/1 or /donations/1.json
  def show
    # If the user uses an old donation URL, redirect to the latest URL and show a flash alert
    if request.path != donation_path(@donation)
      flash.alert = "The donation once at #{request.url} has been updated, and is now located at \
          #{donation_url(@donation)}. You have been redirected."
      redirect_to @donation, status: :moved_permanently and return
    end
  end

  # GET /donations/new
  def new
    authenticate_user!

    @donation = Donation.new
  end

  # GET /donations/1/edit
  def edit
    authenticate_user!

    # If the user uses an old edit donation URL, redirect to the latest URL and show a flash alert
    if request.path != edit_donation_path(@donation)
      flash.alert = "The donation once at #{request.url} has been updated, and is now located at \
          #{edit_donation_url(@donation)}. You have been redirected."
      redirect_to edit_donation_path(@donation), status: :moved_permanently and return
    end
  end

  # POST /donations or /donations.json
  def create
    authenticate_user!

    @donation = Donation.new(donation_params)

    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: "Donation was successfully created." }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1 or /donations/1.json
  def update
    authenticate_user!

    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: "Donation was successfully updated." }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1 or /donations/1.json
  def destroy
    authenticate_user!

    @donation.destroy!

    respond_to do |format|
      format.html { redirect_to donations_path, status: :see_other, notice: "Donation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.friendly.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def donation_params
      params.expect(donation: [ :name, :quantity, :description, :condition, pictures: [] ])
    end
end
