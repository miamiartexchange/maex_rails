class MuseumsController < ApplicationController
  # GET /museums
  # GET /museums.xml
  def index
    @museums = Museum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @museums }
    end
  end

  # GET /museums/1
  # GET /museums/1.xml
  def show
    @museum = Museum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @museum }
    end
  end

  # GET /museums/new
  # GET /museums/new.xml
  def new
    @museum = Museum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @museum }
    end
  end

  # GET /museums/1/edit
  def edit
    @museum = Museum.find(params[:id])
  end

  # POST /museums
  # POST /museums.xml
  def create
    @museum = Museum.new(params[:museum])

    respond_to do |format|
      if @museum.save
        flash[:notice] = 'Museum was successfully created.'
        format.html { redirect_to(@museum) }
        format.xml  { render :xml => @museum, :status => :created, :location => @museum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @museum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /museums/1
  # PUT /museums/1.xml
  def update
    @museum = Museum.find(params[:id])

    respond_to do |format|
      if @museum.update_attributes(params[:museum])
        flash[:notice] = 'Museum was successfully updated.'
        format.html { redirect_to(@museum) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @museum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /museums/1
  # DELETE /museums/1.xml
  def destroy
    @museum = Museum.find(params[:id])
    @museum.destroy

    respond_to do |format|
      format.html { redirect_to(museums_url) }
      format.xml  { head :ok }
    end
  end
end
