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

[http://www.vagrantup.com/downloads.html](http://www.vagrantup.com/downloads.html)

## Install gems

```
bundle install --binstubs --path vendor
```

If you don't want to run the presentation in the future

```
bundle install --binstubs --path vendor --without presentation
```

## Configure

 * edit roles/defender.json and put in your
  [duosec](https://www.duosecurity.com/) credentials
 * look at cookbooks/automated/recipes and see if there's anything
   you'd like to poke at

## Build the players

```
vagrant box add base http://files.vagrantup.com/precise64.box
vagrant up defender
vagrant up attacker
```

## Play

You can reprovision the players
```
vagrant provision defender #(or attacker)
```

Try out 2-factor ssh
```
vagrant ssh defender -- -l defender
```
Neat!

Check out your attacker to see if it did an nmap scan
```
vagrant ssh attacker
...
ls /tmp # and look for an xml file
```
