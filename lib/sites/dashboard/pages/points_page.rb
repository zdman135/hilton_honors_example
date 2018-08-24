require 'taza/page'

module Dashboard
  class PointsPage < Taza::Page
    element(:credit_cards_link) { browser.link(text: 'Credit Cards') }    
    element(:all_offers_spaces) { browser.divs(class:'copy_area') }
    element(:all_rates_fees_links) { browser.links(text: '*Rates and Fees') }

    def find_all_initial_cc_offers
      credit_card_array = []
      visible_offers_spaces = all_offers_spaces.select { |offer_area| offer_area.present? }
      visible_offers_spaces.each { |space| space.imgs.each { |image| credit_card_array.push image.alt } }
      credit_card_array
    end

    def all_visible_rates_fees_links
      all_rates_fees_links.select { |link| link.present? }
    end

    def check_rates_fees_links(links)
      results_array = []
      links.each do |link| 
        link.click
        browser.driver.switch_to.window(browser.driver.window_handles[1])
        results_array.push browser.ps.select { |p| p.text.include? 'Annual Percentage Rate (APR) for Purchases' }.present?
        results_array.push browser.ps.select { |p| p.text.include? '%'}.present?
        browser.windows.last.close
      end
      results_array
    end
  end
end