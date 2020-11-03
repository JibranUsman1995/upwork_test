class CashManagementTablesController < ApplicationController
  before_action :set_cash_management_table, only: [:show, :edit, :update, :destroy]
  before_action :set_company, only: :new

  # GET /cash_management_tables
  # GET /cash_management_tables.json
  def index
    @cash_management_tables = CashManagementTable.all
  end

  # GET /cash_management_tables/1
  # GET /cash_management_tables/1.json
  def show
  end

  # GET /cash_management_tables/new
  def new
    @cash_management_table = @company.cash_management_tables.new
  end

  # GET /cash_management_tables/1/edit
  def edit
  end

  # POST /cash_management_tables
  # POST /cash_management_tables.json
  def create
    @cash_management_table = CashManagementTable.new(cash_management_table_params)

    respond_to do |format|
      if @cash_management_table.save
        format.html { redirect_to @cash_management_table.company, notice: 'Monthly entry was successfully created.' }
        format.json { render :show, status: :created, location: @cash_management_table }
      else
        format.html { render :new }
        format.json { render json: @cash_management_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cash_management_tables/1
  # PATCH/PUT /cash_management_tables/1.json
  def update
    respond_to do |format|
      if @cash_management_table.update(cash_management_table_params)
        format.html { redirect_to @cash_management_table, notice: 'Cash management table was successfully updated.' }
        format.json { render :show, status: :ok, location: @cash_management_table }
      else
        format.html { render :edit }
        format.json { render json: @cash_management_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cash_management_tables/1
  # DELETE /cash_management_tables/1.json
  def destroy
    @cash_management_table.destroy
    respond_to do |format|
      format.html { redirect_to cash_management_tables_url, notice: 'Cash management table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash_management_table
      @cash_management_table = CashManagementTable.find(params[:id])
    end

    def set_company
      @company = Company.find(params[:company_id])
    end

    # Only allow a list of trusted parameters through.
    def cash_management_table_params
      params.require(:cash_management_table).permit(:initial_cash, :cash_out, :cash_in, :company_id)
    end
end
