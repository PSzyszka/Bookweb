require "rails_helper"

describe BooksController do
  describe 'GET index' do
    it 'assigns books' do
      books_list = create_list(:book, 4)
      get :index
      expect(assigns(:books)).to eq(books_list)
    end

    it 'renders the index template' do
      get :index
      expect(assigns(:books)).to render_template('index')
    end
  end

  describe 'GET show' do
    let!(:book) { create(:book) }

    it 'assigns book' do
      params = { id: book.id }
      get :show, params: params
      expect(assigns(:book)).to eq(book)
    end

    it 'renders the show template' do
      params = { id: book.id }
      get :show, params: params
      expect(assigns(:book)).to render_template('show')
    end
  end
end
