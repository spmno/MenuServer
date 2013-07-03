class PageVersionsController < ApplicationController
  # GET /page_versions
  # GET /page_versions.json
  def index
    @page_versions = PageVersion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_versions }
    end
  end

  # GET /page_versions/1
  # GET /page_versions/1.json
  def show
    @page_version = PageVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_version }
    end
  end

  # GET /page_versions/new
  # GET /page_versions/new.json
  def new
    @page_version = PageVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_version }
    end
  end

  # GET /page_versions/1/edit
  def edit
    @page_version = PageVersion.find(params[:id])
  end

  # POST /page_versions
  # POST /page_versions.json
  def create
    @page_version = PageVersion.new(params[:page_version])

    respond_to do |format|
      if @page_version.save
        format.html { redirect_to @page_version, notice: 'Page version was successfully created.' }
        format.json { render json: @page_version, status: :created, location: @page_version }
      else
        format.html { render action: "new" }
        format.json { render json: @page_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /page_versions/1
  # PUT /page_versions/1.json
  def update
    @page_version = PageVersion.find(params[:id])

    respond_to do |format|
      if @page_version.update_attributes(params[:page_version])
        format.html { redirect_to @page_version, notice: 'Page version was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_versions/1
  # DELETE /page_versions/1.json
  def destroy
    @page_version = PageVersion.find(params[:id])
    @page_version.destroy

    respond_to do |format|
      format.html { redirect_to page_versions_url }
      format.json { head :no_content }
    end
  end

  def last_version
    @version = PageVersion.last
  end
end
