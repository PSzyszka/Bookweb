require "rails_helper"

describe BooksController do
  let!(:genre) { Genre.create(name: 'Action') }
  let!(:publisher) { Publisher.create(name: 'Bookshop', city: 'Wroclaw', description: 'Publisher description') }
  let!(:author) do
    Author.create(
      first_name: 'Alan',
      last_name: 'Nowak',
      description: 'Author description',
      birth_date: Date.new(1994,3,15)
    )
  end
  let!(:book1) do
    Book.create(
      title: 'Kill Bill',
      description: 'Book description',
      year_of_release: Date.new(2015,10,20),
      original_language: 'Polish',
      number_of_pages: 150,
      translated_into: 'German',
      author: author,
      publisher: publisher,
      genre: genre
    )
  end

  let!(:book2) do
    Book.create(
      title: 'Deadpool',
      description: 'Book description',
      year_of_release: Date.new(2020,8,25),
      original_language: 'German',
      number_of_pages: 230,
      translated_into: 'English',
      author: author,
      publisher: publisher,
      genre: genre
    )
  end

  describe 'GET index' do
    it 'assigns books' do
      get :index
      expect(assigns(:books)).to eq([book1, book2])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'assigns book' do
      params = { id: book1.id }
      get :show, params: params
      expect(assigns(:book)).to eq(book1)
    end

    it 'renders show template' do
      params = { id: book1.id }
      get :show, params: params
      expect(response).to render_template('show')
    end
  end
end
