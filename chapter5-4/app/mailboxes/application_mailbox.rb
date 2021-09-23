class ApplicationMailbox < ActionMailbox::Base
  routing (/[0-9]+-commnet@/i) => :comments
  routing :all => :backstop
end
