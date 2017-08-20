require_relative '../../spec_helper'

describe Mailers::BookAddedNotification do
  it 'delivers email' do
    mail = Mailers::BookAddedNotification.deliver
  end
end
