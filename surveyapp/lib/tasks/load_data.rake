namespace :setup do

  desc "setup default data"
  task :data  => :environment do 
    Location.create(:title => 'Balaji Grand, Kakinada', :picture => 'http://www.inkakinada.com/sale/image/6606/watermark/Rent_6722.jpg', :latitude  => '16.946278', :longitude => '82.236167')
	Location.create(:title => '3 BHK Duplex', :picture => 'http://www.inkakinada.com/sale/image/6694/watermark/Siva_Nath.jpg', :latitude  => '16.996694', :longitude => '82.255306')
	Location.create(:title => 'Net Center', :picture => 'http://www.inkakinada.com/sale/image/4751/watermark/Sale_6077.jpg', :latitude  => '16.961861', :longitude => '82.237556')
	Location.create(:title => 'Ready', :picture => 'http://www.inkakinada.com/movie/movie_image/806/medium/Ready__3_.jpg', :latitude  => '16.954861', :longitude => '82.237778')
	Location.create(:title => 'Indus', :picture => 'http://www.inkakinada.com/sale/image/5225/watermark/vardhman.jpg', :latitude  => '17.001861', :longitude => '82.252361')
  end	
  
end
