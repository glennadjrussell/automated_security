# Presentation

## Run the Presentation

```
sudo apt-get install imagemagick libmagickwand-dev # (optional) ubuntu
bundle install --binstubs --path vendor
cd presentation && bundle exec showoff serve
 # open http://localhost:9090
```

If you don't want the WarGames!

```
sudo apt-get install imagemagick libmagickwand-dev # (optional) ubuntu
bundle install --binstubs --path vendor --without wargames
cd presentation && bundle exec showoff serve
 # open http://localhost:9090
```

## Or just look at the [pdf](https://github.com/jro/automated_security/blob/master/presentation.pdf?raw=true)
but the links don't work

## Or just look at the [markdown](https://github.com/jro/automated_security/blob/master/presentation/one/01_slide.md)

# WarGames! (defender vs attacker)

## Setup Vagrant

http://www.vagrantup.com/downloads.html

## Install gems

```
bundle install --binstubs --path vendor
```

If you don't want to run the presentation in the future

```
bundle install --binstubs --path vendor --without presentation
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

