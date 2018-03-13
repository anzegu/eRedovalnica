# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

The first step was adding the devise gem and running bundle install.

Then I followed the instructions at https://github.com/plataformatec/devise.

The devise database wasn't quite what I wanted it to be so I added the migration file: add_user_status_to_users user_status:integer, and manually editing the migration to:

add_column :users, :user_status, :integer, :null => false, :default => 0

The next gems that I installed were 'bootstrap-sass' and 'simple_form'.

I created the view files and controller for Subjects.

Then I created the subjects_users many-many model and declared the realtions.

I styled the devise view files and rewrote them with simple_form.

Added name and username to Users table, configured Subject index and show page.

Configured Subject Show Page to show its students, added Grades table.