class PagesController < ApplicationController
  before_action :set_page, only: %i[ show edit update destroy ]

  # GET /pages or /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1 or /pages/1.json
  def show
    # If the user uses an old page URL, redirect to the latest URL and show a flash alert
    if request.path != page_path(@page)
      flash.alert = "The page once at #{request.url} has been updated, and is now located at \
          #{page_url(@page)}. You have been redirected."
      redirect_to @page, status: :moved_permanently and return
    end
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    # If the user uses an old edit page URL, redirect to the latest URL and show a flash alert
    if request.path != edit_page_path(@page)
      flash.alert = "The page once at #{request.url} has been updated, and is now located at \
          #{edit_page_url(@page)}. You have been redirected."
      redirect_to edit_page_path(@page), status: :moved_permanently and return
    end
  end

  # POST /pages or /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1 or /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: "Page was successfully updated." }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1 or /pages/1.json
  def destroy
    @page.destroy!

    respond_to do |format|
      format.html { redirect_to pages_path, status: :see_other, notice: "Page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.friendly.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.expect(page: [ :title, :subtitle, :body, :published_at ])
    end
end
