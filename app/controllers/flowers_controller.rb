class FlowersController < ApplicationController
  # GET /flowers
  # GET /flowers.xml
  def index
    @flowers = Flower.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @flowers }
    end
  end

  # GET /flowers/1
  # GET /flowers/1.xml
  def show
    @flower = Flower.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @flower }
    end
  end

  # GET /flowers/new
  # GET /flowers/new.xml
  def new
    @flower = Flower.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @flower }
    end
  end

  # GET /flowers/1/edit
  def edit
    @flower = Flower.find(params[:id])
  end

  # POST /flowers
  # POST /flowers.xml
  def create
    @flower = Flower.new(params[:flower])

    respond_to do |format|
      if @flower.save
        format.html { redirect_to(@flower, :notice => 'Flower was successfully created.') }
        format.xml  { render :xml => @flower, :status => :created, :location => @flower }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @flower.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /flowers/1
  # PUT /flowers/1.xml
  def update
    @flower = Flower.find(params[:id])

    respond_to do |format|
      if @flower.update_attributes(params[:flower])
        format.html { redirect_to(@flower, :notice => 'Flower was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @flower.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /flowers/1
  # DELETE /flowers/1.xml
  def destroy
    @flower = Flower.find(params[:id])
    @flower.destroy

    respond_to do |format|
      format.html { redirect_to(flowers_url) }
      format.xml  { head :ok }
    end
  end
end
