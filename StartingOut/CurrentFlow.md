#AgileVentures - Setup in One

Having just returned to Agileventures, after a 4 week break, I decided that
it would be a good idea to create a vm from scratch as an agv development machine, so
I worked through the current documentation.

Although the overall process works, there are some simple changes we should make
to make the overall process easier and less of a barrier.

The changes fall into a few categories,

 - bugs in the document tation and scripts
 - Structure of the documents, processes and scripts
 - Duplicate information. (We're not DRY).
 - Missing information.

This document describes the process I encounted. I have also prepared 
a new document set, in an attempt to improve the workflow.

##Current Flow

I visit [http://agileventures.org/projects/websiteone](http://agileventures.org/projects/websiteone) 
and read the pitch.

####Bug

* The link at the end of the pitch giving the set-up procedure, does not work

I eventually copy the link manually, and open the WebsiteOne 
[github wiki article][wsowiki] "*Project Setup (New-Users)*".

[wsowiki]: <https://github.com/AgileVentures/WebsiteOne/wiki/Project-Setup-%28New-Users%29>

###Bug - workflow

* On the first line it sends me somewhere else! It mentions a [great article](http://www.agileventures.org/articles/project-setup-new-users) for getting set up for 
  (back at WebsiteOne).

  I go there, only to disscover that this article is about setting up my github repo (forking Agileventures/WebsiteOne) 
  and cloning my local repo. But I'm still setting up my machine. So I ignore this article and 
  return to setup my virtual machine and follow the [github wiki article][wsowiki] again.

##Background

I've just completed the installation of my Virtualbox with Ubuntu Desktop 14.04.1 32bit iso.
I had setup a 1GB machine with an 8GB disk drive.

I un-imaginatively named the machine *ud14041b32*, with the one user *devtop*.

And to make sure I was up-to date I did the following.

```bash
require 'redcarpet'

sudo apt-get update
sudo apt-get upgrade      

```

A Kernel upgrade was *held back*, so followed with the next line, which I read about [here](http://ubuntuforums.org/showthread.php?t=914157).
    
    sudo apt-get dist-upgrade # to force a new package install 
                              # and prevent upgrade being held back.
    
I couldn't resize the virtual display nor get the clipboard buffer to copy between gueast and host.
So I installed an additional virtual box package in the guest, reference http://askubuntu.com/a/455140
    
    sudo apt-get install virtualbox-guest-dkms
    
I knew I would need git so I installed that manually.

```bash

sudo apt-get install git #install git from command line

```

I did't get the setup script using wget as instructed, but chose to fork and clone the entire project  [AgleVentures/setup-scripts](https://github.com/AgileVentures/setup-scripts) incase I found a bug I could fix it and issue a pull-request with the changes.

```bash

mkdir ~/wk # I'm lazy at typing, so all my agile venture projects will sit in wk 
cd ~/wk
git clone https://github.com/techsailor/setup-scripts.git
cd ~
WITH_PHANTOMJS=true REQUIRED_RUBY=2.1.11  source wk/setup-scripts/scripts/rails_setup.sh

```

###Bug Ruby version wrong.

Typo, should be 2.1.1 not 2.1.11

###Bug missing (ubuntu) Instructions.

Ubuntu only: `rvm` will require the shell to be a login shell, the default install does not have this option set.

Set the login option in Terminal->edit->profile preferences->Tab Title and Command to be set,

###Bug change workflow/instructions. 

The given command will fail with errors, because it defaults to running `bundle install` and we have not got a Gemfile (nor a project at this stage yet).

I suggest: we make the options additive and explicit. so the default is not to run `bundle install`.

Projects can give their own specific command line options, and switch *ON* their particular sub-system requirements (postgress, phanton-js etc).

So at this stage we could either,

Only setup Ruby via rvm and add PhantomJS

```bash

WITH_PHANTOMJS=true REQUIRED_RUBY=2.1.1  source wk/setup-scripts/scripts/rails_setup.sh 

```

or

Create our local repo now and provide it on the command-line to switch on our options,

* bundle to install our GEM's
* Create a project database

But first I must create my local repo from existing and out of date github repo.

```bash

cd wk
git clone https://github.com/techsailor/WebsiteOne.git websiteone
git remote add upstream http://github.com/agileventures/websiteone.git
git checkout develop
git pull upstream develop
cd ~

WITH_PHANTOMJS=true \
WITH_BUNDLE=true \
WITH_DATABASE=true
PROJECT_DIR=wk/websiteone REQUIRED_RUBY=2.1.1  source wk/setup-scripts/scripts/rails_setup.sh 

```

The script can change to the project directory before bundling 
and executing the database migrations, we explicitly switch things on.

####Note

* By specifying a ruby version we get the latest stable (at the time of writing 2.1.3) and the specified version 2.1.1 (Two versions were installed).
* Version 2.1.1 triggers the warning, 

```bash

Install of ruby-2.1.1 - #complete 
Please be aware that you just installed a ruby that requires 3 patches just to be compiled on an up to date linux system.
This may have known and unaccounted for security vulnerabilities.
Please consider upgrading to ruby-2.1.3 which will have all of the latest security patches.
```

###Bug there is a simple bug in the script

``` bash
require 'redcarpet'

#Replace
-  if [ -n $GEMSET ]; then
#With
+  if [ -n "$GEMSET" ]; then

```

Causing 

```bash

Install of ruby-2.1.1 - #complete 
Please be aware that you just installed a ruby that requires 3 patches just to be compiled on an up to date linux system.ecurity vulnerabilities.
Please consider upgrading to ruby-2.1.3 which will have all of the latest security patches.ilt without documentation, to build it run: rvm docs generate-ri
Using /home/devtop/.rvm/gems/ruby-2.1.1
ruby 2.1.1p76 (2014-02-24 revision 45161) [i686-linux]

Usage: grep [OPTION]... PATTERN [FILE]...  <== ERROR !!
Try 'grep --help' for more information.
Creating a new gemset 2.1.1@
Using /home/devtop/.rvm/gems/ruby-2.1.1

```

##Eventually

I have the ruby environment set-up with phantomjs, I need to `bundle install` and create a database.

###Bug (ubuntu) postgres user failure

```bash

devtop@ud14041b32:~/wk/websiteone$ bundle exec rake db:setup
FATAL:  Peer authentication failed for user "postgres"
/home/devtop/.rvm/gems/ruby-2.1.1/gems/activerecord-4.1.0/lib/active_record/connection_adapters/postgresql_adapter.rb:881:in `initialize'

```

This topic is covered very well by an existing paragraph Under the Local Support wiki.

I propose we move this information from Local Support to the Generic overall description, so that all projects can refer to it, since the fix is common to all projects and usiually only done once. (See Local Support [wiki Section](https://github.com/AgileVentures/LocalSupport/wiki/installation#peer-authentication-fails-for-user-postgres)).

```bash

sudo vi /etc/postgresql/9.3/main/pg_hba.conf 

# Append to line 85 " map=basic" to become
    84	# Database administrative login by Unix domain socket
    85	local   all             postgres                                peer map=basic

sudo vi /etc/postgresql/9.3/main/pg_ident.conf
#Add the following map at line 43
    42	# MAPNAME       SYSTEM-USERNAME         PG-USERNAME
    43	basic		devtop			postgres

# Then restart postgres
sudo /etc/init.d/postgresql restart

```
Better fix altogether would be to edit the files as part of the installation script, `rails_setup.sh`

###Bug missing instructions to create test database before runing tests.

```bash
$ rake db:setup RAILS_ENV=test
```

* * * * *

###Links

* [github:Agileventures/setup-scripts Readme.md](https://github.com/AgileVentures/setup-scripts)
* [github:Websiteone github wiki - Development envirnment set up](https://github.com/AgileVentures/WebsiteOne/wiki/Development-environment-set-up)
* [github:Websiteone github wkiki - Project Setup for new users](https://github.com/AgileVentures/WebsiteOne/wiki/Project-Setup-%28New-Users%29)
* [ggileventures: Getting Started](http://agileventures.org/getting-started)
* [agileventures: Website One Project page](http://agileventures.org/projects/websiteone)



