 require 'spec_helper'

describe AddBook do
  let(:interactor) { AddBook.new }

  describe "good input" do
    let(:result) do
      interactor.call(title: "The Fire Next Time", author: "James Baldwin")
    end

    it "succeeds" do
      result.success?.must_equal true
    end

    it "creates a Book with correct title and author" do
      result.book.title.must_equal "The Fire Next Time"
      result.book.author.must_equal "James Baldwin"
    end

    it "persists the Book" do
      result.book.id.wont_be_nil
    end
  end
 end
