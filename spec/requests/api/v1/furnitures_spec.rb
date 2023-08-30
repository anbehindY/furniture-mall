# spec/requests/api/v1/furnitures_spec.rb

require 'swagger_helper'

RSpec.describe 'API::V1::Furnitures', type: :request do
  path '/api/v1/furnitures/{id}' do
    get 'Retrieves a furniture' do
      tags 'Furnitures'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'furniture found' do
        schema type: :object,
               properties: {
                 id: { type: :integer }
                 # Add other furniture attributes here
               },
               required: ['id']

        let(:id) { Furniture.create(id: 1).id }
        run_test!
      end

      response '404', 'furniture not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/v1/furnitures' do
    get 'Retrieves all furnitures' do
      tags 'Furnitures'
      produces 'application/json'

      response '200', 'furnitures found' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer }
                 },
                 required: ['id']
               }

        run_test!
      end
    end
  end
end
