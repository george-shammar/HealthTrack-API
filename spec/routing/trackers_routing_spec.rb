require 'rails_helper'

RSpec.describe TrackersController, type: :routing do
    describe 'routing' do
        it 'routes to #index' do
            expect(get: 'api/trackers').to route_to('trackers#index')
        end

        it 'does not routes to #create' do
            expect(get: 'api/trackers').not_to route_to('trackers#create')
        end

        it 'routes to #show' do
            expect(get: 'api/trackers/1').to route_to('trackers#show', id: '1')
        end

        it 'does not routes to #index' do
            expect(get: 'api/trackers/1').not_to route_to('trackers#index', id: '1')
        end

        it 'routes to #create' do
            expect(post: 'api/trackers').to route_to('trackers#create')
        end

        it 'doex not routes to #show' do
            expect(post: 'api/trackers').not_to route_to('trackers#show')
        end

        it 'routes to #update' do
            expect(put: 'api/trackers/1').to route_to('trackers#update', id: '1')
        end

        it 'does not routes to #delete' do
            expect(put: 'api/trackers/1').not_to route_to('trackers#delete', id: '1')
        end

        it 'routes to #destroy' do
            expect(delete: 'api/trackers/1').to route_to('trackers#destroy', id: '1')
        end

        it 'does not routes to #update' do
            expect(delete: 'api/trackers/1').not_to route_to('trackers#update', id: '1')
        end
    end
end