### [Makers Academy](http://www.makersacademy.com) - Week 4 Pair programming challenge 

# Bookmark manager📚

[Task](#Task) | [Installation Instructions](#Installation) | [Database setup](#Database) | [Functional Description](#Functional_Description) | [User Stories](#User_Stories) | [Domain Model](#Domain_Model) | [Testing](#Testing) | [Further improvements](#Further_Improvements) |

![bookmarks](bookmarks.jpg)

## <a name="Task">The Task</a>

You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

This challenge is the fourth pair programming challenge at [Makers Academy](https://github.com/makersacademy).

## <a name="Installation">Installation Instructions</a>


1. Fork this repository, clone to your local machine then change into the directory:
```
$ git clone git@github.com:davmcgregor/bookmarks-manager.git
$ cd bookmarks-manager
```
2. Load dependencies with bundle:
```
$ gem install bundle
$ bundle
```
3. Run Rspec for tests and coverage, then rubocop for linting
```
$ rspec
$ rubocop
```
4. Run the app on a local server and use on the broswer: http://localhost:9292/

```Shell
$ rackup
```

## <a name="Database">Database setup</a>

1. Connect to psql
2. Create databases using the psql command CREATE DATABASE for `bookmark_manager` and `bookmark_manager_test`;
3. Connect to the databases using the pqsl command \c bookmark_manager;
4. Run the SQL scripts saved in the `db/migrations` folder in the given order;

Note: To set up the testing environment, create a test database and run the psql commands for both databases.

## <a name="Functional_Description">Functional Description</a>

The website will have the following specification:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

## <a name="User_Stories">User Stories</a>

```
As a user,
So I can see all my bookmarks,
I would like to be able to view all saved bookmarks
```
```
As a user,
So I can store bookmark data for later retrieval,
I want to add a bookmark to Bookmark Manager
```
```
As a user,
So I can remove my bookmark from Bookmark Manager,
I want to delete a bookmark from
```
```
As a user,
So I can make changes to bookmarks in Bookmark Manager,
I want to update a bookmark
```
```
As a user,
To ensure all submitted URLs are valid URLs,
I want to validate all bookmarks
```
```
As a user
So that I can make interesting notes
I want to add a Comment to a Bookmark
```
```
As a user
So that I can categorize my bookmarks
I want to add a Tag to a Bookmark
```
```
As a user
So that I can find relevant bookmarks
I want to filter Bookmarks by a Tag
```
```
As a user
So that I can have a personalised bookmark list
I want to sign up with my email address
```
```
As a user
So that I can keep my account secure
I want to sign in with my email and password
```
```
As a user
So that I can keep my account secure
I want to sign out
```

## <a name="Domain_Model">Domain Model</a>

![domain_model](DomainModel.jpg)

## <a name="Testing">Testing</a>

Tests were written with RSpec and Capybara. To run the tests in terminal: 

```bash
$ cd bookmarks-manager
$ rspec
```

## <a name="Further_Improvements">Further Improvements</a>

### Linking Bookmarks to a User
At the moment logging in doesn't change the user experience much. Extend the application so that:
* A user has to be logged in to add or view Bookmarks
* A user can only read/update/delete bookmarks they have added

### Improve User Interface
There are a number of unlinked routes - improve the user experience and test-drive a way to link the pages together

### Automate Migrations
There are a number of .sql files that have individual migration steps required to set up the databases. Try to set up Ruby methods to run each SQL command - run these methods to do the database setup in test and development 