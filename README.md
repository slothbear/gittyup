# adcopu

New users to git and Heroku sometimes have trouble
with the syntax of the git commands required to deploy
an application to Heroku. This wrapper combines
the git add, commit, and push commands needed.

The command has no arguments. The user is prompted for a
commit message. The wrapper contains no error handling,
so the user will receive errors from git.

## Installation

Add this line to your application's Gemfile:

    gem 'adcopu'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adcopu

## Usage

Typical usage:

    $ adcopu
    enter commit message> Added all the things
    [master 318bd11] Added all the things
     1 files changed, 2 insertions(+), 0 deletions(-)
    ... wait for push to start, then ...
    ... lots of messages from Heroku ...
    Counting objects: 8, done.
    Delta compression using up to 2 threads.
    ... and more ...
    To git@heroku.com:awesomeproject.git
       13f987c..aceaf78  master -> master
    $


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
