require 'rubygems'
require 'taza/page'

module Dashboard
  class SearchBar < ::Taza::Page
    element(:city_search_text_field) { browser.text_field(id: 'hotelSearchOneBox') }
    element(:first_selection) { browser.li(id: 'location0') }
    element(:start_date) { browser.text_field(id: 'checkin') }
    element(:end_date) { browser.text_field(id: 'checkout') }

    def week_long_trip_search(destination)
        # method is a basic search week long trip. 1 room, 1 adult, no children,
        # no flex dates, and not using points
        trip_dates = self.get_dates_for_trip

        city_search_text_field.when_present.send_keys(destination)
        first_selection.when_present.click

        start_date.clear
        end_date.clear
        
        start_date.send_keys(trip_dates.first)
        end_date.send_keys(trip_dates.last)
        return destination
    end


    def popular_destination
        destinations = ["Orlando", "Sydney", "London", "Paris", "Venice", "Manhattan", "Cape Town", "Las Vegas",
        "Rome", "Great Barrier Reef", "Rio", "Maldives", "Hawaii", "Grand Canyon", "South Island", 
        "San Diego", "San Francisco", "Niagara Falls", "Los Angeles", "Dubai", "Auckland", "Singapore", 
        "Seychelles", "Bali", "Durban", "Bangkok", "Cairns", "Iceland", "Whitsundays", "Costa Del Sol", 
        "Bora Bora", "Tahiti"]
        destinations.sample
    end

    def get_dates_for_trip
        start_date = DateTime.now + 5
        start_date_formatted = start_date.strftime("%d %b %Y")
        end_date = start_date + 7
        end_date_formatted = end_date.strftime("%d %b %Y")
        [start_date_formatted, end_date_formatted]
    end
  end
end