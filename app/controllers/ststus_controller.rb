class StstusController < ApplicationController
  # GET /ststus
  # GET /ststus.json
  def index
    @ststus = Ststu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ststus }
    end
  end

  # GET /ststus/1
  # GET /ststus/1.json
  def show
    @ststu = Ststu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ststu }
    end
  end

  # GET /ststus/new
  # GET /ststus/new.json
  def new
    @ststu = Ststu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ststu }
    end
  end

  # GET /ststus/1/edit
  def edit
    @ststu = Ststu.find(params[:id])
  end

  # POST /ststus
  # POST /ststus.json
  def create
    @ststu = Ststu.new(params[:ststu])

    respond_to do |format|
      if @ststu.save
        format.html { redirect_to @ststu, notice: 'Ststu was successfully created.' }
        format.json { render json: @ststu, status: :created, location: @ststu }
      else
        format.html { render action: "new" }
        format.json { render json: @ststu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ststus/1
  # PUT /ststus/1.json
  def update
    @ststu = Ststu.find(params[:id])

    respond_to do |format|
      if @ststu.update_attributes(params[:ststu])
        format.html { redirect_to @ststu, notice: 'Ststu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ststu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ststus/1
  # DELETE /ststus/1.json
  def destroy
    @ststu = Ststu.find(params[:id])
    @ststu.destroy

    respond_to do |format|
      format.html { redirect_to ststus_url }
      format.json { head :no_content }
    end
  end
end
