class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all
	@menu = @lists.sample(7)
	session[:pass_variable] = @menu
  end
  
  def sendma      
	@user = User.all
	@email = current_user.email
	
	@addemailsV = Addemail.all	
	@addemails = @addemailsV.where(currentemail: @email).pluck(:extraemail)
	
    @name = current_user.username	
	@menu = session[:pass_variable]
	ExampleMailer.sample_email(@email, @name, @menu, @addemails).deliver  	
	redirect_to (email_lists_path)
  end
  
  def healthy
  @lists = List.all
  @menu = @lists.where(healthy: 'True')
  end
  
  def email
  @lists = List.all
  @addemails = Addemail.all
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
  end
  
 
  


  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to choices_choose_path, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
	 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :ingredients, :healthy, :username, :email)
    end
end
