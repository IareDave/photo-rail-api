class PicturesController < ProtectedController
  before_action :set_picture, only: %i[show, update, destroy]

  # GET /pictures
  def index
    @pictures = current_user.pictures.all

    render json: @pictures
  end

  # GET /pictures/1
  def show
    @picture = current_user.pictures.find(params[:id])
    render json: @picture
  end

  # POST /pictures
  def create
    @picture = current_user.pictures.build(picture_params)

    if @picture.save
      render json: @picture, status: :created, location: @picture
    else
      render json: @picture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pictures/1
  def update
    @picture = current_user.pictures.find(params[:id])
    if @picture.update(picture_params)
      render json: @picture
    else
      render json: @picture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pictures/1
  def destroy
    @picture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = current_user.pictures.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_params
      params.require(:picture).permit(:url, :user_id)
    end
end
