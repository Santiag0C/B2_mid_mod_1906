require 'rails_helper'

RSpec.describe "book Index Page" do
  it "can list all books whith content" do
    # author = Author.create(name: "santi")
    # author_1 = Author.create(name: "jhon")
    book_1 = Book.create(title: "the tails of potter", num_page: 200, publication_year: 2004)
    book_2 = Book.create(title: "harry potter", num_page: 400, publication_year: 2002)

    visit '/books'

    expect(page).to have_content(book_1.title)
    expect(page).to have_content(book_1.num_page)
    expect(page).to have_content(book_1.publication_year)

    expect(page).to have_content(book_2.title)
    expect(page).to have_content(book_2.num_page)
    expect(page).to have_content(book_2.publication_year)
  end
end
