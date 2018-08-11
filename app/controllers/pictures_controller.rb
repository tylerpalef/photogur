class PicturesController < ApplicationController

  def index
   @most_recent_pictures = Picture.most_recent_five
 end

  def show
     @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
     @picture = Picture.new

     @picture.title = params[:picture][:title]
     @picture.artist = params[:picture][:artist]
     @picture.url = params[:picture][:url]

   end

   def edit
     @picture = Picture.find(params[:id])
   end

   def update
     @picture = Picture.find(params[:id])

     @picture.title = params[:picture][:title]
     @picture.artist = params[:picture][:artist]
     @picture.url = params[:picture][:url]


     if @picture.save
       redirect_to "/pictures/#{@picture.id}"
     else
       render :edit
     end
   end


     def destroy
       @picture = Picture.find(params[:id])
       @picture.destroy
       redirect_to "/pictures"
      end

  end

end
