class SearchController < ApplicationController
  def index
    @events = event_adapter.price(22601901897)
  end

  def event_adapter
    eventbrite_search = Adapter::EventBriteAdapter.new
  end
end
