### [Makers Academy](http://www.makersacademy.com) - Week 4 Pair programming challenge 

# Bookmark manager📚

[Task](#Task) | [Installation Instructions](#Installation) | [Functional Description](#Functional_Description) | [User Stories](#User_Stories) | [Objects & Methods](#Methods) | [Testing](#Testing) | [Further improvements](#Further_Improvements) |

![bookmarks](bookmarks.jpg)

## <a name="Task">The Task</a>

You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

This challenge is the fourth pair programming challenge at [Makers Academy](https://github.com/makersacademy).

## <a name="Installation">Installation Instructions</a>


1. Fork this repository, clone to your local machine then change into the directory:
```
$ git clone git@github.com:davmcgregor/bookmakr-manager.git
$ cd bookmark-challenge
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
4. Run the app on a local server and play on the broswer: http://localhost:4567/

```Shell
$ rackup config.ru -p 4567
```

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

## <a name="Methods">Objects & Methods</a>

## <a name="Testing">Testing</a>

Tests were written with RSpec and Capybara. To run the tests in terminal: 

```bash
$ cd bookmark-manager
$ rspec
```

## <a name="Further_Improvements">Further Improvements</a>
