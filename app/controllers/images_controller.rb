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
    
    private 
    
    def post_params
        params.require(:image).permit(:i, :caption)
    end
end
