require "rails_helper"

describe RatingsController do
  let!(:author) do Author.create(
    first_name: 'Magda',
    last_name: 'Lost',
    birth_date: Date.new(2001,5,21),
    description: 'Author description'
    )
  end

  let!(:publisher) { Publisher.create(name: 'New books', city: 'Bydgoszcz', description: 'Publisher description') }
  let!(:rating1) { Rating.create(vote: 1, author_id: author.id) }
  let!(:rating2) { Rating.create(vote: 5) }
  let!(:genre) { Genre.create(name: 'Romance') }
  let!(:book) do Book.create(
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

  let!(:rating3) { Rating.create(vote: 1, book_id: book.id) }
  let!(:rating4) { Rating.create(vote: 2, book_id: book.id) }
  let!(:rating5) { Rating.create(vote: 5, book_id: book.id) }

  describe 'GET index' do
    it 'assigns rating' do
      get :index
      expect(assigns(:rating)).to eq([rating1, rating2])
    end

    it 'renders the index template' do
      get :index
      expect(assigns(:rating)).to render_template('index')
    end
  end

  describe 'POST create' do
    it 'increases the count of ratings and redirects the page' do

    end

    it 'assigns rating' do

    end
  end
end
