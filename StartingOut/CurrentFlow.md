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

* The link does not work

I eventually copy the link manually, and open the WebsiteOne 
[github wiki article][wsowiki] "*Project Setup (New-Users)*".

[wsowiki]: <https://github.com/AgileVentures/WebsiteOne/wiki/Project-Setup-%28New-Users%29>

####Bug - workflow

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

    sudo apt-get update
    sudo apt-get upgrade      
    
A Kernel upgrade was *held back*, so followed with next line, which I read about [here](http://ubuntuforums.org/showthread.php?t=914157).
    
    sudo apt-get dist-upgrade # to force a new package install 
                              # and prevent upgrade being held back.
    
I couldn't resize the virtual display nor get the clipboard buffer to copy between gueast and host.
So I installed an additional virtual box package in the guest, reference http://askubuntu.com/a/455140
    
    sudo apt-get install virtualbox-guest-dkms
    
I knew I would need git so I installed that manually

    sudo apt-get install git

I did't get the setup script using wget as instructed, but chose to fork and clone [AgleVentures/setup-scripts](https://github.com/AgileVentures/setup-scripts) incase I found a bug.

    mkdir ~/wk # I'm lazy at typing, so all my agile venture projects will sit in wk 
    cd ~/wk
    git clone https://github.com/techsailor/setup-scripts.git
    cd ~
    source
    WITH_PHANTOMJS=true REQUIRED_RUBY=2.1.1  source wk/setup-scripts/scripts/rails_setup.sh
  
  ####bug Not REQUIRED_RUBY=2.1.11
  
  
