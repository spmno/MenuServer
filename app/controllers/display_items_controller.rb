  class DisplayItemsController < ApplicationController
  # GET /display_items
  # GET /display_items.json
  def index
    @display_items = DisplayItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @display_items }
    end
  end

  # GET /display_items/1
  # GET /display_items/1.json
  def show
    @display_item = DisplayItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @display_item }
    end
  end

  # GET /display_items/new
  # GET /display_items/new.json
  def new
    @page_id = params[:id]
    @display_item = DisplayItem.new
    @display_item.page_id = @page_id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @display_item }
    end
  end

  # GET /display_items/1/edit
  def edit
    @display_item = DisplayItem.find(params[:id])
  end

  # POST /display_items
  # POST /display_items.json
  def create
    @display_item = DisplayItem.new(params[:display_item])
    @page_version = PageVersion.new
    @page_version.name = "Display item create"
    respond_to do |format|
      if @display_item.save && @page_version.save
        #format.html { redirect_to @display_item, notice: 'Display item was successfully created.' }
        #format.json { render json: @display_item, status: :created, location: @display_item }
        format.html { redirect_to edit_page_path(@display_item.page_id)}
      else
        format.html { render action: "new" }
        format.json { render json: @display_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /display_items/1
  # PUT /display_items/1.json
  def update
    @display_item = DisplayItem.find(params[:id])

    respond_to do |format|
      if @display_item.update_attributes(params[:display_item])
        format.html { redirect_to @display_item, notice: 'Display item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @display_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /display_items/1
  # DELETE /display_items/1.json
  def destroy
    @display_item = DisplayItem.find(params[:id])
    @display_item.destroy

    respond_to do |format|
      format.html { redirect_to display_items_url }
      format.json { head :no_content }
    end
  end
  def save_select_dish
    @dish_id = params[:id]
    logger.debug("add save_select_dish")
    if request.xhr?
      #insert display item control

    end
    respond_to do |format|
      format.js
    end
  end
end
