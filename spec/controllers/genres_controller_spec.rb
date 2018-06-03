require 'rails_helper'

describe GenresController do
  let!(:genre1) { Genre.create(name: 'Action') }
  let!(:genre2) { Genre.create(name: 'Fiction') }
  describe 'GET index' do
    it 'assigns genres' do
      get :index
      expect(assigns(:genres)).to eq([genre1, genre2])
    end

    it 'renders the index template' do
      get :index
      expect(assigns(:genres)).to render_template('index')
    end
  end

  describe 'GET books' do
    it 'assigns genre' do
      params = { id: genre1.id }
      get :books, params: params
      expect(assigns(:genre)).to eq(genre1)
    end

    it 'renders the books template' do
      params = { id: genre1.id }
      get :books, params: params
      expect(assigns(:genre)).to render_template('books')
    end
  end
end
