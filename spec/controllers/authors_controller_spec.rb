require 'rails_helper'
describe AuthorsController do
  let!(:author1) do
    Author.create(
      first_name: 'Alan',
      last_name: 'Nowak',
      description: 'Author description',
      birth_date: Date.new(1994,3,15)
    )
  end
  let!(:author2) do
    Author.create(
      first_name: 'Ewa',
      last_name: 'Lion',
      description: 'Author description',
      birth_date: Date.new(1975,7,30)
    )
  end

  describe 'GET index' do
    it 'assigns authors' do
      get :index
      expect(assigns(:authors)).to eq([author1, author2])
    end

    it 'renders index template' do
      get :index
      expect(assigns(:authors)).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'assigns author' do
      params = { id: author1.id }
      get :show, params: params
      expect(assigns(:author)).to eq(author1)
    end

    it 'renders show template' do
      params = { id: author1.id }
      get :show, params: params
      expect(assigns(:author)).to render_template('show')
    end
  end
end
