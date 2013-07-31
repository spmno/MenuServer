class DishKindsController < ApplicationController
  # GET /dish_kinds
  # GET /dish_kinds.json
  def index
    @dish_kinds = DishKind.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dish_kinds }
    end
  end

  # GET /dish_kinds/1
  # GET /dish_kinds/1.json
  def show
    @dish_kind = DishKind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dish_kind }
    end
  end

  # GET /dish_kinds/new
  # GET /dish_kinds/new.json
  def new
    @dish_kind = DishKind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dish_kind }
    end
  end

  # GET /dish_kinds/1/edit
  def edit
    @dish_kind = DishKind.find(params[:id])
  end

  # POST /dish_kinds
  # POST /dish_kinds.json
  def create
    @dish_kind = DishKind.new(params[:dish_kind])
    @page_version = PageVersion.new
    @page_version.name = "Create Kind"
    respond_to do |format|
      if @dish_kind.save && @page_version.save
        format.html { redirect_to @dish_kind, notice: 'Dish kind was successfully created.' }
        format.json { render json: @dish_kind, status: :created, location: @dish_kind }
      else
        format.html { render action: "new" }
        format.json { render json: @dish_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dish_kinds/1
  # PUT /dish_kinds/1.json
  def update
    @dish_kind = DishKind.find(params[:id])

    respond_to do |format|
      if @dish_kind.update_attributes(params[:dish_kind])
        format.html { redirect_to @dish_kind, notice: 'Dish kind was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dish_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_kinds/1
  # DELETE /dish_kinds/1.json
  def destroy
    @dish_kind = DishKind.find(params[:id])
    @dish_kind.destroy

    respond_to do |format|
      format.html { redirect_to dish_kinds_url }
      format.json { head :no_content }
    end
  end
end
