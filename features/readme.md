New users to git and Heroku sometimes have trouble with the syntax of
the git commands required to deploy an application to Heroku. This
wrapper combines the git add, commit, and push commands needed.

The command has no arguments. The user is prompted for a commit message.
The wrapper contains no error handling, so the user will receive errors
from git.
