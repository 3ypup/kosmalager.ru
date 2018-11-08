class EventsController < ApplicationController


$rusdate = %w[0 января февраля марта апреля мая июня июля августа сентября октября ноября декабря ]


def index
  @events = Event.order(:date)



   
  @bckg = "/img/home.jpg"
  @title = "Встречи"
  @label = "Храма свв. бесср. Космы и Дамиана"
  @tab_title = "События"

end




    def new
      @event = Event.new
      @bckg = "/img/home.jpg"
      @title = "Новое событие"
      @label = ""
    end

    def create

      @event = Event.new(event_params)
        
        if  @event.save
          redirect_to @event
        else
          render action: 'new'
        end
    end

  def show
    @event = Event.find(params[:id])


    @bckg = @event.image

    @title = @event.title

    @label =""

    @tab_title = @event.title

  end

def destroy
  @event = Event.find(params[:id])
  
  #@post.comments.each do |comment|
  #  comment.destroy
  #end


  @event.destroy


  redirect_to events_path

end

def event_params
    params.require(:event).permit(:author, :content, :title, :image, :date)
  end


end
