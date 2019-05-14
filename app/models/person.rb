class Person < ApplicationRecord

  # Class Method
  def self.by_first_name
    order(:first_name)
  end

  # Instance Method
  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  # <% @people.each do |person| %>
  #   <h1> <%= person.first_name %> <%= person.last_name %> </h1>
  #   <h1> <%= person.full_name %> </h1>
  # <% end %>

  end

 