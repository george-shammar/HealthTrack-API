require 'rails_helper'

RSpec.describe TrackersController, type: :routing do
    describe 'routing' do
        it 'routes to #index' do
            expect(get: 'api/trackers').to route_to('trackers#index')
        end
    end
end