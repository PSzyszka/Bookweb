require 'rails_helper'

describe GenresController do
  describe 'GET index' do
    it 'assigns genres' do
      genres_list = create_list(:genre, 6)
      get :index
      expect(assigns(:genres)).to eq(genres_list)
    end

    it 'render the index template' do
      get :index
      expect(assigns(:genres)).to render_template('index')
    end
  end

  describe 'GET books' do
    let!(:genre) { create(:genre) }

    it 'assigns genre' do
      params = { id: genre.id }
      get :books, params: params
      expect(assigns(:genre)).to eq(genre)
    end

    it 'render the books template' do
      params = { id: genre.id}
      get :books, params: params
      expect(assigns(:genre)).to render_template('books')
    end
  end
end
