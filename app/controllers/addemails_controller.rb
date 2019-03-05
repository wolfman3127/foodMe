class AddemailsController < ApplicationController
  before_action :set_addemail, only: [:show, :edit, :update, :destroy]

  # GET /addemails
  # GET /addemails.json
  def index
    @addemails = Addemail.all
  end

  # GET /addemails/1
  # GET /addemails/1.json
  def show
  end

  # GET /addemails/new
  def new
    @addemail = Addemail.new
  end

  # GET /addemails/1/edit
  def edit
  end

  # POST /addemails
  # POST /addemails.json
  def create
    @addemail = Addemail.new(addemail_params)

    respond_to do |format|
      if @addemail.save
        format.html { redirect_to email_lists_path, notice: 'Addemail was successfully created.' }
        format.json { render :show, status: :created, location: @addemail }
      else
        format.html { render :new }
        format.json { render json: @addemail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addemails/1
  # PATCH/PUT /addemails/1.json
  def update
    respond_to do |format|
      if @addemail.update(addemail_params)
        format.html { redirect_to @addemail, notice: 'Addemail was successfully updated.' }
        format.json { render :show, status: :ok, location: @addemail }
      else
        format.html { render :edit }
        format.json { render json: @addemail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addemails/1
  # DELETE /addemails/1.json
  def destroy
    @addemail.destroy
    respond_to do |format|
      format.html { redirect_to addemails_url, notice: 'Addemail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addemail
      @addemail = Addemail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addemail_params
      params.require(:addemail).permit(:extraemail, :currentemail)
    end
end
