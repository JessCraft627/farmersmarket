<%= form_for product do |f| %>
  <%= f.number_field :quantity %>

  <%=
    button_to "Add To Cart",
    add_to_cart_path,
    method: :patch,
    params: { product_id: product.id, name: product.name }
  %>
<% end %>


add to quantity attribute to Order class
add total price
