# Presentation

## Run the Presentation

```
sudo apt-get install imagemagick libmagickwand-dev # (optional) ubuntu
bundle install --binstubs
```

If you don't want the WarGames!

```
sudo apt-get install imagemagick libmagickwand-dev # (optional) ubuntu
bundle install --binstubs --without wargames
```

## Or just look at the markdown

# WarGames! (defender vs attacker)

## Setup Vagrant

http://www.vagrantup.com/downloads.html

## Install gems

```
bundle install --binstubs
```

If you don't want to run the presentation in the future

```
bundle install --binstubs --without presentation
```

## Build the players

```
vagrant box add base http://files.vagrantup.com/precise64.box
vagrant up
```

## FIXME there's more still!

bin/knife environment create automated
bin/knife role from file chef/roles/*.json
bin/berks upload

