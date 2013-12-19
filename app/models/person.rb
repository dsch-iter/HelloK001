class Person < ActiveRecord::Base
  attr_accessible :birthday, :body_temperature, :can_send_email, :country, :description, :email, :favorite_time, :graduation_year, :name, :price, :secret

# ensure secret contains at least one upper case 
#validates_format_of :secret, :with => /[A-Z]/, :message => "must contain at least one upper case character"
# ensure secret contains at least one lower case 
#validates_format_of :secret, :with => /[a-z]/, :message => "must contain at least one lower case character"

# the country field is a controlled vocabulary: we must check that # its value is within our allowed options
validates_inclusion_of :country, :in => ['Canada', 'Mexico', 'UK', 'USA'], :message => "must be one of Canada, Mexico, UK or USA"

# email should read like an email address; this check isn't exhaustive,
# but it's a good start
validates_format_of :email,
:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "doesn't look like a proper email address"
end
