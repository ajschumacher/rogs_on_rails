# Setting up rogs_on_rails

This is how I made this thing, which is different from how to run it
starting from the current state of the repo. These are my notes on
starting from scratch to get a minimal Ruby on Rails app on Heroku
with PostgreSQL, using my Mac.

* Installing Postgres on my Mac. (I looked at these [very detailed directions](https://www.codefellows.org/blog/three-battle-tested-ways-to-install-postgresql) but already had much of it done, so my steps are shorter.)

```
brew install postgresql
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
createdb aaron # this is probably optional
psql # connected!
```

* Getting the Postgres gem installed. (Setting the arch flags is something I found on stack overflow.)

```
sudo su
env ARCHFLAGS="-arch x86_64" gem install pg
```

* Make the Rails scaffolds for a new app.

```
rails new rogs_on_rails --database=postgresql
```