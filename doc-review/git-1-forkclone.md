---
layout: jumbotron-narrow/default
title:
---

<div class="panel agv-orange-panel">
  <div style="width:420px" class="center-block">
    <h1>Access the tools</h1>
  </div>
</div>

##Getting started with github

### Fork websiteone repository

Login to github and search for the agileventures/websiteone
repository. In the top right corner, you should see the fork
button. Use it to get your copy of this project under your account.


![Github fork button](../../images/GithubFork.png "http://Github.com/agileventures/websiteone/")

### Clone your forked repository

Get a local copy of your Github repository.

{% highlight bash %}

$ git clone http://github.com/username/websiteone.git $ git branch -v

{% endhighlight %}

### Add a remote upstream pointer
{% highlight bash %}

$ git remote add upstream http://github.com/agileventures/websiteone.git

{% endhighlight %}

###Current situation.

![git repository relationships](https://docs.google.com/drawings/d/1twhw8db9fIuO29OTBc3TpAS_Vyp7MACnH-tQBUacV2Y/pub?w=480&h=360)


You are now in a position that you can :

* pull updates from upstream
* push your changes to origin 

You can read about how to do this in the next article : [Working on a
Feature
Branch](../git-2-feature-branch/)

