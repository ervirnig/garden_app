class FlowerTwosController < ApplicationController
  # GET /flower_twos
  # GET /flower_twos.xml
  def index
    @flower_twos = FlowerTwo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @flower_twos }
    end
  end

  # GET /flower_twos/1
  # GET /flower_twos/1.xml
  def show
    @flower_two = FlowerTwo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @flower_two }
    end
  end

  # GET /flower_twos/new
  # GET /flower_twos/new.xml
  def new
    @flower_two = FlowerTwo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @flower_two }
    end
  end

  # GET /flower_twos/1/edit
  def edit
    @flower_two = FlowerTwo.find(params[:id])
  end

  # POST /flower_twos
  # POST /flower_twos.xml
  def create
    @flower_two = FlowerTwo.new(params[:flower_two])

    respond_to do |format|
      if @flower_two.save
        format.html { redirect_to(@flower_two, :notice => 'Flower two was successfully created.') }
        format.xml  { render :xml => @flower_two, :status => :created, :location => @flower_two }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @flower_two.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /flower_twos/1
  # PUT /flower_twos/1.xml
  def update
    @flower_two = FlowerTwo.find(params[:id])

    respond_to do |format|
      if @flower_two.update_attributes(params[:flower_two])
        format.html { redirect_to(@flower_two, :notice => 'Flower two was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @flower_two.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /flower_twos/1
  # DELETE /flower_twos/1.xml
  def destroy
    @flower_two = FlowerTwo.find(params[:id])
    @flower_two.destroy

    respond_to do |format|
      format.html { redirect_to(flower_twos_url) }
      format.xml  { head :ok }
    end
  end
end
