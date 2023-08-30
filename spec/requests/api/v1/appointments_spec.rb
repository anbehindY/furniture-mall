# spec/requests/api/v1/appointments_spec.rb

require 'swagger_helper'

RSpec.describe 'API::V1::Appointments', type: :request do
  path '/api/v1/appointments' do
    get 'Retrieves all user appointments' do
      tags 'Appointments'
      produces 'application/json'

      response '200', 'appointments found' do
        schema type: :array,
          items: {
            type: :object,
            properties: {
              id: { type: :integer },
              appoint_date: { type: :string, format: 'date-time' },
              furniture_id: { type: :integer },
              user_id: { type: :integer }
            },
            required: ['id', 'appoint_date', 'furniture_id', 'user_id']
          }

        run_test!
      end
    end
  end

  path '/api/v1/appointments' do
    post 'Creates a new appointment' do
      tags 'Appointments'
      consumes 'application/json'
      parameter name: :appointment, in: :body, schema: {
        type: :object,
        properties: {
          appoint_date: { type: :string, format: 'date-time' },
          furniture_id: { type: :integer },
          user_id: { type: :integer }
        },
        required: ['appoint_date', 'furniture_id', 'user_id']
      }

      response '201', 'appointment created' do
        let(:appointment) { { appoint_date: '2023-09-01T12:00:00Z', furniture_id: 1, user_id: 1 } }
        run_test!
      end

      response '422', 'invalid appointment parameters' do
        let(:appointment) { { appoint_date: nil, furniture_id: 1, user_id: 1 } }
        run_test!
      end
    end
  end
end
