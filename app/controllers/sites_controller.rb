class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  # GET /sites
  # GET /sites.json
  def index
    @sites = Site.all
  end

  # GET /sites/1
  # GET /sites/1.json
  def show
    @site = Site.friendly.find(params[:id])
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites
  # POST /sites.json
  def create
    @site = Site.new(site_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @site.save
        # add_community(site_params[:id])
        format.html { redirect_to @site, notice: 'Sitio creado exitosamente.' }
        format.json { render :show, status: :created, location: @site }
      else
        format.html { render :new }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sites/1
  # PATCH/PUT /sites/1.json
  def update
    @site = Site.find(params[:id])
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to @site, notice: 'El sitio fué actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @site }
      else
        format.html { render :index }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site.destroy
    respond_to do |format|
      format.html { redirect_to sites_url, notice: 'Site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.friendly.find(params[:id])
      # @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:name, :address, :map, :phone, :about, :comuna_id, :user_id, :picture,
        community_ids: [],
        event_ids: [],
        category_ids: []
      )
    end

    # def add_community(community_ids)
      # if community_ids != nil
      #   # @new_community = Community.create(name: 'un site me creó')
      #   # @new_community.save
      # end
    # end
end
