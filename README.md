# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Feature Highlights

### Admin Categories
Admin users can list and create new categories
Admins can add new products using the new category

### User Authentication
As a Visitor I can go to the registration page from any page in order to create an account
As a Visitor I can sign up for a user account with my e-mail, password, first name and last name
As a Visitor I can sign in using my e-mail and password(minimum 4 characters)
As a User I can log out from any page
As a User I cannot sign up with an existing e-mail address (uniqueness validation)
Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem

### Order Details Page
The order page contains items, their image, name, description, quantities and line item totals
The final amount for the order is displayed

## Screenshots

## Testing
RSpec for unit testing
Cypress for integration testing

## Getting Started

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

