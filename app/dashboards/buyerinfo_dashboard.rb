require "administrate/base_dashboard"

class BuyerinfoDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    buyer: Field::BelongsTo,
    id: Field::Number,
    fname: Field::String,
    lname: Field::String,
    address: Field::String,
    phone: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    image: Field::String,
    city: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :buyer,
    :id,
    :fname,
    :lname,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :buyer,
    :id,
    :fname,
    :lname,
    :address,
    :phone,
    :created_at,
    :updated_at,
    :image,
    :city,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :buyer,
    :fname,
    :lname,
    :address,
    :phone,
    :image,
    :city,
  ].freeze

  # Overwrite this method to customize how buyerinfos are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(buyerinfo)
  #   "Buyerinfo ##{buyerinfo.id}"
  # end
end
