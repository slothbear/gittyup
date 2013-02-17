# adcopu

New users to **git** and **Heroku** sometimes have trouble
with the syntax and arguments of the git commands required
to deploy an application to Heroku. This wrapper combines
the git *add*, *commit*, and *push* commands.

The command has no arguments. The user is prompted for a
commit message. The wrapper contains no error handling,
so the user will receive standard errors from git.

## installation
If you have a Gemfile, add **adcopu**. Otherwise, install it like this:

    $ gem install adcopu

## usage

typical usage:

    $ adcopu
    enter commit message (blank to exit)> New site title
    [master 318bd11] New site title
     1 files changed, 2 insertions(+), 0 deletions(-)

*wait for push to start, then*

*lots of messages from Heroku*

*until the push ends like this*

    To git@heroku.com:awesomeproject.git
       13f987c..aceaf78  master -> master
    $

## detailed operation
All code is in [bin/adcopu](https://github.com/slothbear/adcopu/blob/master/bin/adcopu).
An error from any system command causes the script to exit.

Since the script is designed for beginning users, it assumes
you are committing to and pushing the **master** branch.
If you know enough to have multiple
branches, you probably don't need this script.

The script performs these steps:

1. `git status` If this command fails, the current directory is
probably not a git repository.
1. `git status` If this command provides no output, then there
are no changed files to commit.
1. `git add --all` Add new, changed, and removed files to the index.
1. Prompt the user for a commit message. If no message is entered, the script exits.
1. `git commit --message <message>` Record changes to the repository.
1. `git push heroku master` Deploy the updated repository to Heroku.

For every system command performed, the exit status of the
operation is passed back via `exit $?.exitstatus`. The status

## tests
A nicely formatted test suite is available at
[Relish](http://relishapp.com/slothbear/adcopu).

## contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
