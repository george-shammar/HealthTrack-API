require 'rails_helper'

RSpec.describe TrackersController, type: :routing do
    describe 'routing' do
        it 'routes to #index' do
            expect(get: 'api/trackers').to route_to('trackers#index')
        end

        it 'routes to #show' do
            expect(get: 'api/trackers/1').to route_to('trackers#show', id: '1')
        end

        it 'routes to #create' do
            expect(post: 'api/trackers').to route_to('trackers#create')
        end
    end
end