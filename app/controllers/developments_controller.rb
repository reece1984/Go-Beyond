class DevelopmentsController < ApplicationController
  # GET /developments
  # GET /developments.json

  before_filter :authenticate_user!, except: [:index, :show]
  
  def index
    @developments = Development.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @developments }
    end
  end

  # GET /developments/1
  # GET /developments/1.json
  def show
    @development = Development.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @development }
    end
  end

  # GET /developments/new
  # GET /developments/new.json
  def new
    @development = Development.new
    @development.developer = current_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @development }
    end
  end

  # GET /developments/1/edit
  def edit
    @development = Development.find(params[:id])
  end

  # POST /developments
  # POST /developments.json
  def create
    @development = Development.new(params[:development])

    respond_to do |format|
      if @development.save
        format.html { redirect_to @development, notice: 'Development was successfully created.' }
        format.json { render json: @development, status: :created, location: @development }
      else
        format.html { render action: "new" }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /developments/1
  # PUT /developments/1.json
  def update
    @development = Development.find(params[:id])

    respond_to do |format|
      if @development.update_attributes(params[:development])
        format.html { redirect_to @development, notice: 'Development was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developments/1
  # DELETE /developments/1.json
  def destroy
    @development = Development.find(params[:id])
    @development.destroy

    respond_to do |format|
      format.html { redirect_to developments_url }
      format.json { head :no_content }
    end
  end
end
