class TabletsController < ApplicationController
  before_action :set_tablet, only: [:show, :edit, :update, :destroy]

  # GET /tablets
  def index
    @tablets = Tablet.all
  end

  # GET /tablets/1
  def show
  end

  # GET /tablets/new
  def new
    @tablet = Tablet.new
  end

  # GET /tablets/1/edit
  def edit
  end

  # POST /tablets
  def create
    @tablet = Tablet.new(tablet_params)

    if @tablet.save
      redirect_to @tablet, notice: 'Tablet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tablets/1
  def update
    if @tablet.update(tablet_params)
      redirect_to @tablet, notice: 'Tablet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tablets/1
  def destroy
    @tablet.destroy
    redirect_to tablets_url, notice: 'Tablet was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablet
      @tablet = Tablet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tablet_params
      params.require(:tablet).permit(:name, :merchant_id, :user_id)
    end
end
