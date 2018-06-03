require 'rails_helper'

describe AuthorsController do
  describe 'GET index' do
    it 'assigns author' do
      authors_list = create_list(:author, 5)
      get :index
      expect(assigns(:authors)).to eq(authors_list)
    end

    it 'renders the index template' do
      get :index
      expect(assigns(:authors)).to render_template('index')
    end
  end

  describe 'GET show' do
    let!(:author) { create(:author) }

    it 'assigns author' do
      params = { id: author.id }
      get :show, params: params
      expect(assigns(:author)).to eq(author)
    end

    it 'renders the show template' do
      params = { id: author.id }
      get :show, params: params
      expect(assigns(:author)).to render_template('show')
    end
  end
end
