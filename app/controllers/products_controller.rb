class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: [:show]

  # GET /products or /products.json
  def index
    @products = Product.all
    set_meta_tags title: "Products",
                    description: "GMR Recycling specializes in recycling and metal recovery. At GMR, we
                    strive to achieve the highest standards in preserving the environment and natural resources.
                    We are also keen to use the latest clean technology in order to recover metals and raise
                    awareness about the importance of recovering metals in a correct and environmentally friendly
                    manner. We also explain to you the company’s most important activities and its products of
                    recovered metals. We thank you for visiting our website and learning more about the
                    importance of recycling lead-acid batteries and recovering metals.",
                    keywords: "products, services, recycling, metal, recovery, environment, technology",
                    og: {
                        title: "Products",
                        description: :description,
                    }
  end

  # GET /products/1 or /products/1.json
  def show
    @highlights = Highlight.where(product_id: @product.id)
    @home_site = HomeSite.first
    set_meta_tags title: @product.title,
                    description: @product.description,
                    keywords: "products, services, recycling, metal, recovery, environment, technology",
                    og: {
                        title: @product.title,
                        description: @product.description,
                    }
  end

  # GET /products/new
  def new
    @product = Product.new
    @product.features.build
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to dashboard_path, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to dashboard_path, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :title_ar, :video, :name, :name_ar, :home_image, :description, :description_ar, :image_title, :image_title_ar, :image_description, :image_description_ar, :user_id, images: [], features_attributes: [:id, :title, :_destroy, :content, :content_ar, :image])
    end
end
