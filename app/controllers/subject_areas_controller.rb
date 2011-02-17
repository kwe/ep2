class SubjectAreasController < ApplicationController
  # GET /subject_areas
  # GET /subject_areas.xml
  def index
    @subject_areas = SubjectArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subject_areas }
    end
  end

  # GET /subject_areas/1
  # GET /subject_areas/1.xml
  def show
    @subject_area = SubjectArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subject_area }
    end
  end

  # GET /subject_areas/new
  # GET /subject_areas/new.xml
  def new
    @subject_area = SubjectArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subject_area }
    end
  end

  # GET /subject_areas/1/edit
  def edit
    @subject_area = SubjectArea.find(params[:id])
  end

  # POST /subject_areas
  # POST /subject_areas.xml
  def create
    @subject_area = SubjectArea.new(params[:subject_area])

    respond_to do |format|
      if @subject_area.save
        format.html { redirect_to(@subject_area, :notice => 'Subject area was successfully created.') }
        format.xml  { render :xml => @subject_area, :status => :created, :location => @subject_area }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subject_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subject_areas/1
  # PUT /subject_areas/1.xml
  def update
    @subject_area = SubjectArea.find(params[:id])

    respond_to do |format|
      if @subject_area.update_attributes(params[:subject_area])
        format.html { redirect_to(@subject_area, :notice => 'Subject area was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subject_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_areas/1
  # DELETE /subject_areas/1.xml
  def destroy
    @subject_area = SubjectArea.find(params[:id])
    @subject_area.destroy

    respond_to do |format|
      format.html { redirect_to(subject_areas_url) }
      format.xml  { head :ok }
    end
  end
end
