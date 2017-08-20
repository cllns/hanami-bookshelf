class Mailers::BookAddedNotification
  include Hanami::Mailer

  from    '<from>'
  to      '<to>'
  subject 'Hello'
end
