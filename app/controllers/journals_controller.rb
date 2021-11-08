class JournalsController < ApplicationController
  before_action :set_journal, only: %i[ show edit update destroy ]

  # GET /journals or /journals.json
  def index
    @journals = Journal.all
    render json: @journals
  end

  # GET /journals/1 or /journals/1.json
  def show
    # @journal = Journal.find(params[:id])
    render json: @journal
  end

  # GET /journals/new
  # def new
  #   @journal = Journal.new
  # end

  # GET /journals/1/edit
  # def edit
  # end

  # POST /journals or /journals.json
  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      render json: @journal, status: :created, location: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
    # respond_to do |format|
    #   if @journal.save
    #     format.html { redirect_to @journal, notice: "Journal was successfully created." }
    #     format.json { render :show, status: :created, location: @journal }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @journal.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  # PATCH/PUT /journals/1 or /journals/1.json
  def update
    # @journal = Journal.find(params[:id])
    if @journal.update(journal_params)
      render json: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
    # respond_to do |format|
    #   if @journal.update(journal_params)
    #     format.html { redirect_to @journal, notice: "Journal was successfully updated." }
    #     format.json { render :show, status: :ok, location: @journal }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @journal.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /journals/1 or /journals/1.json
  def destroy
    # @journal = Journal.find(params[:id])
    @journal.destroy
    # respond_to do |format|
    #   format.html { redirect_to journals_url, notice: "Journal was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private

  # def get_journals
  #   Journal.order('created_at DESC')
  # end
    # Use callbacks to share common setup or constraints between actions.
    def set_journal
      @journal = Journal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journal_params
      params.require(:journal).permit(:title, :date, :entry)
    end
end
