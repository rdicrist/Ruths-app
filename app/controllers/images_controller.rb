class ImagesController < ApplicationController
    
    def index
        @images = Image.all
    end
    
    def new
        @image = Image.new
    end
    
    def create
        @image = Image.create(post_params)
        redirect_to images_path
    end
    
    def destroy
        @image = Image.find(params[:id])
        @image.destroy
        redirect_to images_path
    end
    
    def show
        @image = Image.find(params[:id])
    end
    
    private 
    
    def post_params
        params.require(:image).permit(:i, :caption)
    end
end
