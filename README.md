<b>DESCRIPTION</b>

This is a gradebook app that allows users to register - default as a student - then await the admin to change their status to a teacher or admin. 
Teachers can create classes and edit them and delete them aswell, to which they can add students and grade them.
Admins have all the rights; changing the users status, deleting, adding, creating subjects.

-----------------------------------------------------------------------------------

<b>INSTALLATION</b>

The first step was adding the devise gem and running bundle install.

Then I followed the instructions at https://github.com/plataformatec/devise.

The devise database wasn't quite what I wanted it to be so I added the migration file: add_user_status_to_users user_status:integer, and manually editing the migration to:

```
add_column :users, :user_status, :integer, :null => false, :default => 0
```

The next gems that I installed were 'bootstrap-sass' and 'simple_form'.

I created the view files and controller for Subjects.

Then I created the subjects_users many-many model and declared the realtions.

I styled the devise view files and rewrote them with simple_form.

Added name and username to Users table, configured Subject index and show page.

Configured Subject Show Page to show its students, added Grades table.

Custom pages are students and users.
Students are for adding students to subjects.
Users are for deleting and changing the status.

--------------------------------------------------------

<b>JavaScript</b>

For adding grades to students there is a JS model with AJAX. There are also AJAX calls for changing and deleting a user.

--------------------------------------------------------

<b>GEMS</b>

The projects gems are:
```
gem 'devise'
gem 'bootstrap-sass'
gem 'simple_form'
gem 'jquery-rails'
```

--------------------------------------------------------
