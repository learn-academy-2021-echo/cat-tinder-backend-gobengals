require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
     it 'gets all the cats ' do
       Cat.create(
         name: 'Garfield',
         age: 42,
         enjoys: 'lasagna',
         image: 'https://comicvine.gamespot.com/a/uploads/scale_medium/11/111746/4684849-latest.jpg'
       )
       get '/cats'
       cat = JSON.parse(response.body)
       expect(response).to have_http_status(200)
       expect(cat.length).to eq 1
     end
  end

  describe "POST /create" do
     it 'creates a cat ' do
       cat_params = {
        cat: {
         name: 'Garfield',
         age: 42,
         enjoys: 'lasagna',
         image: 'https://comicvine.gamespot.com/a/uploads/scale_medium/11/111746/4684849-latest.jpg'
       }
     }
       post '/cats', params: cat_params
       expect(response).to have_http_status(200)
       cat = Cat.first

      expect(cat.name).to eq 'Garfield'
      expect(cat.age).to eq 42
      expect(cat.enjoys).to eq 'lasagna'
      expect(cat.image).to eq 'https://comicvine.gamespot.com/a/uploads/scale_medium/11/111746/4684849-latest.jpg'

  end
 end
end
