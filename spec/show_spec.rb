require 'rails_helper'

describe 'Author Show Page' do
  before :each do
    @author = Author.create(name: "santi")
  end
  visit "/authors/#{@author.id}"
end
