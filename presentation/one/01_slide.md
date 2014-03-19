!SLIDE 
## What Your Mother Never Told You About
# Automating Security

!SLIDE bullets
# whoami

* Jason Rohwedder
* @jasonrohwedder
* geek @ Risk I/O

!SLIDE
# NOT A NEW THING

!SLIDE bullets 
# Security is Hard

* Be methodical.
* It takes time.

!SLIDE bullets 
# Your App

* Continuous Integration
* Continuous Deployment

!SLIDE bullets 
# Agile Datacenter

* Iterate. Iterate. Iterate.
* Production-like development and testing

!SLIDE
# HOSTING?

!SLIDE bullets 
# Unicorns

* [Heroku](https://www.heroku.com/)
* [AppEngine](https://www.google.com)
* Datastore-aaS

!SLIDE bullets 
# So Secure Hosting?

* [Firehost](http://www.firehost.com/)

!SLIDE
# NETWORKS

!SLIDE bullets 
# Transport security

* Physically controlled network
* Logically Isolated network - VLAN / VPC
* Internal VPN
* SSL all the things!

!SLIDE bullets 
# Network Access

* host-based firewalls
* firewall management apps
* AWS - security groups
* AWS - VPC subnet ACLs

!SLIDE bullets
# Host Firewalls!

* cookbook: [iptables](http://community.opscode.com/cookbooks/iptables)
* cookbook: [iptables-ng](http://community.opscode.com/cookbooks/iptables-ng)
* cookbook: [firewall](http://community.opscode.com/cookbooks/firewall)

!SLIDE bullets 
# Auto-Firewall! 

* cookbook [fail2ban](http://community.opscode.com/cookbooks/fail2ban)
* DIY?

!SLIDE bullets 
# WAF - Web App Firewall

* stale cookbook: [mod_security](http://community.opscode.com/cookbooks/mod_security) (sorry)
* SaaS: [Incapsula](http://www.incapsula.com/)
* SaaS: [darkshield.io](http://darkshield.io/)

!SLIDE bullets
# DoS/DDoS Protection

* app: [bouncer](https://github.com/rawdigits/bouncer) *cookbook soon!*
* SaaS: [Incapsula](http://www.incapsula.com/)
* SaaS: [prolexic](http://www.prolexic.com/)
* SaaS: [cloudflare](http://www.cloudflare.com/)
* SaaS: [darkshield.io](http://darkshield.io/)

!SLIDE bullets 
# Bastion host

* Limited services (eg ssh and vpn)
* Use 2-factor!

!SLIDE bullets
# SSH 

* Use keys not passwords
* cookbook: [openssh](http://community.opscode.com/cookbooks/openssh)
* cookbook: [users](http://community.opscode.com/cookbooks/users)

!SLIDE bullets
# sudo 

* Do people still use root?
* cookbook: [sudo](http://community.opscode.com/cookbooks/sudo)
* cookbook: [users](http://community.opscode.com/cookbooks/users)

!SLIDE bullets
# VPN 

* cookbook: [openvpn](http://community.opscode.com/cookbooks/openvpn)
* cookbook: [users](http://community.opscode.com/cookbooks/users)

!SLIDE bullets 
# 2-factor

* No Excuses!
* ssh: cookbook [duo-unix](http://community.opscode.com/cookbooks/duo-unix)
* ssh: cookbook [other duo-unix](https://github.com/hungtruong/chef-duo-unix)
* vpn: **TODO!** (okay one excuse)

!SLIDE
# SERVERS

!SLIDE bullets
# Software Updates

* cookbook:
  [unattended_upgrades](http://community.opscode.com/cookbooks/unattended_upgrades) *OLD?*
* cookbook:
  [apt-periodic](http://community.opscode.com/cookbooks/apt-periodic)
* SaaS: [cloudpassage](http://www.cloudpassage.com/)
* Pin/Freeze critical or unreliable packages

!SLIDE bullets 
# OS Hardening

* cookbook: [selinux](http://community.opscode.com/cookbooks/selinux)
* cookbook: [sysctl](http://community.opscode.com/cookbooks/sysctl)

!SLIDE bullets 
# IDS-ish

* cookbook: [snort](http://community.opscode.com/cookbooks/snort)
* cookbook: [ossec](http://community.opscode.com/cookbooks/ossec)
* cookbook: [aide](http://community.opscode.com/cookbooks/aide)
* SaaS: [cloudpassage](http://www.cloudpassage.com/)
* SaaS: [opsmatic](http://opsmatic.com/) *ALPHA*

!SLIDE bullets 
# Encrypting Resting Data

* cookbook: [encrypyted_volume](http://community.opscode.com/cookbooks/encrypted_volume)
* cookbook: [encryptfs](http://community.opscode.com/cookbooks/encryptfs)
* cookbook: [zncrypt](http://community.opscode.com/cookbooks/zncrypt)

!SLIDE bullets 
# Encrypting Backups

* cookbook: encrypted_s3 **TODO!**
* cookbook: [tarsnap](http://community.opscode.com/cookbooks/tarsnap)
* network volume with encryption

!SLIDE bullets 
# Centralized Logging

* cookbook: [rsyslog](http://community.opscode.com/cookbooks/rsyslog)
* cookbook: [logstash](http://community.opscode.com/cookbooks/logstash)
* cookbook: [splunk](http://community.opscode.com/cookbooks/splunk)
* cookbook: [graylog2](http://community.opscode.com/cookbooks/graylog2)
* SaaS: [loggly](https://www.loggly.com/)

!SLIDE
# TESTING!

!SLIDE bullets
# Static Analysis
## (Ruby on Rails)

* rubygem: [brakeman](http://brakemanscanner.org/)
* SaaS: [code climate](https://codeclimate.com/)
* SaaS+app: [veracode](http://www.veracode.com/)

!SLIDE bullets 
# Host Vulnerability Scanning

* SaaS: [Qualys](https://www.qualys.com/)
* App: [Nessus](http://www.tenable.com/products/nessus)
* cookbook: [nessus](http://community.opscode.com/cookbooks/nessus)

!SLIDE bullets 
# WebApp Vulnerability Scanning

* SaaS: [Whitehat Sentinel](https://www.whitehatsec.com/sentinel_services/selection.html)
* SaaS: [Qualys WAS](https://www.qualys.com/)

!SLIDE bullets 
# Fixing things!
## (you knew it was coming)

* SaaS: [Risk I/O](https://www.risk.io)

!SLIDE
# WarGames!

!SLIDE bullets
# MOAR?

* @jasonrohwedder
* [https://github.com/jro/automated_security](https://github.com/jro/automated_security) *HELP!*
* [https://github.com/risk-io](https://github.com/risk-io)
* [https://github.com/HoneyApps/chef-mod_security](https://github.com/HoneyApps/chef-mod_security)

!SLIDE bullets
# T-shirts?

* bug bounty
* pull requests
* non-chef branches of WarGames

