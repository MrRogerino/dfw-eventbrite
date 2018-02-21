class EventBriteAdapter
  include HTTParty

  API_KEY = ENV['EB_KEY']
  base_uri "eventbriteapi.com/v3/events/search"
  headers Authorization: "Bearer #{API_KEY}"

  def random_event(keyword, location, start_date = DateTime.now.midnight)
    self.get('', query: { q: keyword,
                          "location.address".to_sym => location,
                          "start_date.range_start".to_sym => start_date.to_s[0..-7],
                          "start_date.range_end".to_sym => (start_date + 1.day).to_s[0..-7] })["events"]

  end

  private





end
