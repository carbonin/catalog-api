=begin
Insights Service Catalog API

This is a API to fetch and order catalog items from different cloud sources

OpenAPI spec version: 1.0.0
Contact: you@your-company.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
Rails.application.routes.draw do

  mount SwaggerUiEngine::Engine, at: '/api'

  def add_swagger_route http_method, path, opts = {}
    # Convert codegen substitutions into Symbols
    full_path = path.gsub(/{(.*?)}/, ':\1')
    # Add back in a custom base path if required
    full_path = File.join(ENV["BASE_PATH"], full_path) if ENV["BASE_PATH"]

    constraint = opts[:constraint_name].camelize.constantize
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", constraints: constraint, via: http_method
  end

  add_swagger_route 'POST', '/portfolios', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'add_portfolio'
  add_swagger_route 'POST', '/portfolio_items', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'add_portfolio_item'
  add_swagger_route 'POST', '/portfolios/{portfolio_id}/portfolio_items/{portfolio_item_id}', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'add_portfolio_item_to_portfolio'
  add_swagger_route 'POST', '/providers', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'add_provider'
  add_swagger_route 'POST', '/orders/{order_id}/items', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'add_to_order'
  add_swagger_route 'GET', '/catalog_items', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'catalog_items'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}/plans/{plan_id}/parameters', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'catalog_plan_parameters'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}/plans/{plan_id}/json_schema', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'catalog_plan_schema'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'fetch_catalog_item_with_provider'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'fetch_catalog_item_with_provider_and_catalog_id'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}/plans', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'fetch_plans_with_provider_and_catalog_id'
  add_swagger_route 'GET', '/portfolios/{portfolio_id}/portfolio_items/{portfolio_item_id}', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'fetch_portfolio_item_from_portfolio'
  add_swagger_route 'GET', '/portfolios/{portfolio_id}/portfolio_items', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'fetch_portfolio_items_with_portfolio'
  add_swagger_route 'GET', '/portfolios/{portfolio_id}', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'fetch_portfolio_with_id'
  add_swagger_route 'GET', '/orders/{order_id}/items/{order_item_id}', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'list_order_item'
  add_swagger_route 'GET', '/orders/{order_id}/items', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'list_order_items'
  add_swagger_route 'GET', '/orders', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'list_orders'
  add_swagger_route 'GET', '/portfolio_items', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'list_portfolio_items'
  add_swagger_route 'GET', '/portfolios', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'list_portfolios'
  add_swagger_route 'GET', '/order_items/{order_item_id}/progress_messages', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'list_progress_messages'
  add_swagger_route 'GET', '/providers', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'list_providers'
  add_swagger_route 'POST', '/orders', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'new_order'
  add_swagger_route 'POST', '/orders/{order_id}', controller_name: 'admins', constraint_name: 'adminsConstraint', action_name: 'submit_order'
  add_swagger_route 'GET', '/catalog_items', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'catalog_items'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}/plans/{plan_id}/parameters', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'catalog_plan_parameters'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}/plans/{plan_id}/json_schema', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'catalog_plan_schema'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'fetch_catalog_item_with_provider'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'fetch_catalog_item_with_provider_and_catalog_id'
  add_swagger_route 'GET', '/providers/{provider_id}/catalog_items/{catalog_id}/plans', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'fetch_plans_with_provider_and_catalog_id'
  add_swagger_route 'GET', '/portfolios/{portfolio_id}/portfolio_items/{portfolio_item_id}', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'fetch_portfolio_item_from_portfolio'
  add_swagger_route 'GET', '/portfolios/{portfolio_id}/portfolio_items', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'fetch_portfolio_items_with_portfolio'
  add_swagger_route 'GET', '/portfolios/{portfolio_id}', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'fetch_portfolio_with_id'
  add_swagger_route 'GET', '/orders/{order_id}/items/{order_item_id}', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'list_order_item'
  add_swagger_route 'GET', '/orders/{order_id}/items', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'list_order_items'
  add_swagger_route 'GET', '/orders', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'list_orders'
  add_swagger_route 'GET', '/portfolio_items', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'list_portfolio_items'
  add_swagger_route 'GET', '/portfolios', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'list_portfolios'
  add_swagger_route 'GET', '/order_items/{order_item_id}/progress_messages', controller_name: 'users', constraint_name: 'usersConstraint', action_name: 'list_progress_messages'
end
