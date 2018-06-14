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

  describe 'GET new' do
    it 'creates new book' do
      get :new
      expect(assigns(:book)).to be_a_new(Book)
    end

    it 'renders the new template' do
      get :new
      expect(assigns(:book)).to render_template('new')
    end
  end

  describe 'POST create' do
    let!(:author) { create(:author) }
    let!(:genre) { create(:genre) }
    let!(:publisher) { create(:publisher) }

    context 'with valid attributes' do
      it 'creates book and redirects to created book' do
        params = { book:
          {
            title: 'Black Panther',
            description: 'Nice book',
            year_of_release: Date.new(2005,12,7),
            original_language: 'Polish',
            number_of_pages: 150,
            translated_into: 'Spanish',
            author_id: author.id,
            genre_id: genre.id,
            publisher_id: publisher.id
          }
        }

        expect { post :create, params: params }.to change { Book.count }.by(1)
        expect(response).to redirect_to(assigns(:book))
      end
    end

    context 'with invalid attributes' do
      it 'does not save new book and renders new method' do
        params = { book:
          {
            title: '',
            description: 'Nice book',
            year_of_release: Date.new(2005,12,7),
            original_language: 'Polish',
            number_of_pages: 150,
            translated_into: 'Spanish',
            author_id: author.id,
            genre_id: genre.id,
            publisher_id: publisher.id
          }
        }

        expect { post :create, params: params }.to_not change(Book,:count)
        expect(response).to render_template('new')
      end
    end
  end

  describe 'GET edit' do
    let!(:book) { create(:book) }

    it 'assigns book' do
      params = { id: book.id }
      get :edit, params: params
      expect(assigns(:book)).to eq(book)
    end

    it 'renders the edit template' do
      params = { id: book.id }
      get :edit, params: params
      expect(assigns(:book)).to render_template('edit')
    end
  end

  describe 'PUT update' do
    let!(:book) { create(:book, title: 'Godzilla', number_of_pages: 200) }
    context 'with valid attributes' do
      it 'updates book attributes and redirects to index' do
        params = { id: book.id, book: { title: 'Anaconda', number_of_pages: 546 } }
        put :update, params: params
        book.reload
        book.title.should eq('Anaconda')
        book.number_of_pages.should eq('546')
        expect(response).to redirect_to(books_path)
      end
    end

    context 'with invalid attributes' do
      it 'do not updates and renders edit' do
        params = { id: book.id, book: { title: nil, number_of_pages: 546 } }
        put :update, params: params
        book.reload
        book.title.should eq('Godzilla')
        book.number_of_pages.should eq('200')
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    let!(:book) { create(:book) }
    it 'deletes the book' do
      params = { id: book.id }
      expect { delete :destroy, params: params }.to change { Book.count }.by(-1)
    end
    it 'redirects to books_path' do
      params = { id: book.id }
      delete :destroy, params: params
      expect(response).to redirect_to(books_path)
    end
  end
end
