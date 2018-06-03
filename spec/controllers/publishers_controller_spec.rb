require 'rails_helper'

describe PublishersController do
  let!(:publisher1) { Publisher.create(name: 'Bookshop', city: 'Wroclaw', description: 'Publisher description') }
  let!(:publisher2) { Publisher.create(name: 'Book world', city: 'Poznan', description: 'Publisher description') }

  describe 'GET index' do
    it 'assigns publishers' do
      get :index
      expect(assigns(:publishers)).to eq([publisher1, publisher2])
    end

    it 'renders index template' do
      get :index
      expect(assigns(:publishers)).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'assigns publisher' do
      params = { id: publisher1.id }
      get :show, params: params
      expect(assigns(:publisher)).to eq(publisher1)
    end

    it 'renders show template' do
      params = { id: publisher1.id }
      get :show, params: params
      expect(assigns(:publisher)).to render_template('show')
    end
  end
end
