class OrcidsController < ApplicationController
  # GET /orcids
  # GET /orcids.json
  def index
    @orcids = Orcid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orcids }
    end
  end

  # GET /orcids/1
  # GET /orcids/1.json
  def show
    @orcid = find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orcid }
    end
  end

  # GET /orcids/new
  # GET /orcids/new.json
  def new
    @orcid = Orcid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orcid }
    end
  end

  # GET /orcids/1/edit
  def edit
    @orcid = Orcid.find(params[:id])
  end

  # POST /orcids
  # POST /orcids.json
  def create
    @orcid = Orcid.new(params[:orcid])

    respond_to do |format|
      if @orcid.save
        format.html { redirect_to @orcid, notice: 'Orcid was successfully created.' }
        format.json { render json: @orcid, status: :created, location: @orcid }
      else
        format.html { render action: "new" }
        format.json { render json: @orcid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orcids/1
  # PUT /orcids/1.json
  def update
    @orcid = Orcid.find(params[:id])

    respond_to do |format|
      if @orcid.update_attributes(params[:orcid])
        format.html { redirect_to @orcid, notice: 'Orcid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orcid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcids/1
  # DELETE /orcids/1.json
  def destroy
    @orcid = Orcid.find(params[:id])
    @orcid.destroy

    respond_to do |format|
      format.html { redirect_to orcids_url }
      format.json { head :no_content }
    end
  end
end
