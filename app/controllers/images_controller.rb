class ImagesController < ApplicationController
    
    def index
        @images = Image.all
    end
    
    # actions for every category
    def animal
        @images = Image.where(:category => "Animals")
    end
    
    def flower
        @images = Image.where(:category => "Flowers")
    end
    
    def sun
        @images = Image.where(:category => "Sunrises/Sunsets")
    end
    
    def coast
        @images = Image.where(:category => "Coastal Areas")
    end
        
    def water
        @images = Image.where(:category => "Lakes and Rivers")
    end
            
    def cloud
        @images = Image.where(:category => "Clouds")
    end
    
    def portfolio
        @images = Image.where(:category => "Portfolios")
    end
    

    
    def new
        @image = Image.new
    end
    
    def create
        @image = Image.create(post_params)
        
        if @image.save
            flash[:notice] = "Successfully created image!"
            redirect_to images_path
        else
            flash[:alert] = "Error creating new image!"
            render :new
        end
    end
    
    def destroy
        @image = Image.find(params[:id])
        @image.destroy
        redirect_to images_path
    end
    
    def show
        @image = Image.find(params[:id])
    end
    
    def edit
        @image = Image.find(params[:id])
    end
    
    def update 
        @image = Image.find(params[:id])
        @image.update(post_params)
        redirect_to(image_path(@image))
    end
    
    private 
    
    def post_params
        params.require(:image).permit(:i, :caption, :category)
    end
end
