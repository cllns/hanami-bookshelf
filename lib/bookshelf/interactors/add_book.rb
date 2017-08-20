require 'hanami/interactor'

class AddBook
  include Hanami::Interactor

  expose :book

  def initialize

  end

  def call(title:, author:)
    @book = BookRepository.new.create({title: title, author: author})
  end
end
