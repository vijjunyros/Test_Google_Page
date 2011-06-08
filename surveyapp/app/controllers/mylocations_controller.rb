class MylocationsController < ApplicationController
  
  	def index
	  @map = GMap.new("map_div")
	  @map.control_init(:large_map => true,:map_type => true)
	  @map.center_zoom_init([16.999,82.30],12)
    @markers = Location.find(:all)
    @markers.each do |marker_seq|
      @map.overlay_init(GMarker.new([marker_seq.latitude,marker_seq.longitude],:title => marker_seq.title, :info_window => info_data(marker_seq)))
    end
    render :layout => false
	end
  
  
  def info_data(marker_seq)
  data = "<div style='width:100%'>
 <div style='width:70%'>
 <img src=#{marker_seq.picture} height='100px;' width='200px;'>
 </div>
 <div>
 <a href='http://www.inkakinada.com' target='_blank'>
 #{marker_seq.title}
 </a>
 </div>
 </div>"
  data
  end
  
  
  
end
