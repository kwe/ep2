class ProspectusRequestsController < ApplicationController
  # GET /prospectus_requests
  # GET /prospectus_requests.xml
  def index
    @prospectus_requests = ProspectusRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prospectus_requests }
    end
  end

  # GET /prospectus_requests/1
  # GET /prospectus_requests/1.xml
  def show
    @prospectus_request = ProspectusRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prospectus_request }
    end
  end

  # GET /prospectus_requests/new
  # GET /prospectus_requests/new.xml
  def new
    @prospectus_request = ProspectusRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prospectus_request }
    end
  end

  # GET /prospectus_requests/1/edit
  def edit
    @prospectus_request = ProspectusRequest.find(params[:id])
  end

  # POST /prospectus_requests
  # POST /prospectus_requests.xml
  def create
    @prospectus_request = ProspectusRequest.new(params[:prospectus_request])

    respond_to do |format|
      if @prospectus_request.save
        format.html { redirect_to(@prospectus_request, :notice => 'Prospectus request was successfully created.') }
        format.xml  { render :xml => @prospectus_request, :status => :created, :location => @prospectus_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prospectus_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prospectus_requests/1
  # PUT /prospectus_requests/1.xml
  def update
    @prospectus_request = ProspectusRequest.find(params[:id])

    respond_to do |format|
      if @prospectus_request.update_attributes(params[:prospectus_request])
        format.html { redirect_to(@prospectus_request, :notice => 'Prospectus request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prospectus_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prospectus_requests/1
  # DELETE /prospectus_requests/1.xml
  def destroy
    @prospectus_request = ProspectusRequest.find(params[:id])
    @prospectus_request.destroy

    respond_to do |format|
      format.html { redirect_to(prospectus_requests_url) }
      format.xml  { head :ok }
    end
  end
end
