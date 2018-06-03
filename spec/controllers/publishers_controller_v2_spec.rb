require 'rails_helper'

describe PublishersController do
  describe 'GET index' do
    it 'assigns publisher' do
      publishers_list = create_list(:publisher, 10)
      get :index
      expect(assigns(:publishers)).to eq(publishers_list)
    end

    it 'render the index template' do
      get :index
      expect(assigns(:publishers)).to render_template('index')
    end
  end

  describe 'GET show' do
    let!(:publisher) { create(:publisher) }

    it 'assigns publisher' do
      params = { id: publisher.id }
      get :show, params: params
      expect(assigns(:publisher)).to eq(publisher)
    end

    it 'render the show template' do
      params = { id: publisher.id}
      get :show, params: params
      expect(assigns(:publisher)).to render_template('show')
    end
  end
end
