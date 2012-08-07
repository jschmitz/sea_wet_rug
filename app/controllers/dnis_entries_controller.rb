class DnisEntriesController < ApplicationController
  # GET /dnis_entries
  # GET /dnis_entries.json
  def index
    @dnis_entries = DnisEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dnis_entries }
    end
  end

  # GET /dnis_entries/1
  # GET /dnis_entries/1.json
  def show
    @dnis_entry = DnisEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dnis_entry }
    end
  end

  # GET /dnis_entries/new
  # GET /dnis_entries/new.json
  def new
    @dnis_entry = DnisEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dnis_entry }
    end
  end

  # GET /dnis_entries/1/edit
  def edit
    @dnis_entry = DnisEntry.find(params[:id])
  end

  # POST /dnis_entries
  # POST /dnis_entries.json
  def create
    @dnis_entry = DnisEntry.new(params[:dnis_entry])

    respond_to do |format|
      if @dnis_entry.save
        format.html { redirect_to @dnis_entry, notice: 'Dnis entry was successfully created.' }
        format.json { render json: @dnis_entry, status: :created, location: @dnis_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @dnis_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dnis_entries/1
  # PUT /dnis_entries/1.json
  def update
    @dnis_entry = DnisEntry.find(params[:id])

    respond_to do |format|
      if @dnis_entry.update_attributes(params[:dnis_entry])
        format.html { redirect_to @dnis_entry, notice: 'Dnis entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dnis_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dnis_entries/1
  # DELETE /dnis_entries/1.json
  def destroy
    @dnis_entry = DnisEntry.find(params[:id])
    @dnis_entry.destroy

    respond_to do |format|
      format.html { redirect_to dnis_entries_url }
      format.json { head :no_content }
    end
  end
end
