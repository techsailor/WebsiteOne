---
layout: jumbotron-narrow/default
title:
---

##Working on a Feature

### Create a Feature Branch

Keep your changes that relate to a particular feature on it's own
branch. So you will want to Create a feature branch from the current
latest development state.

####Make your develop branch up-to-date with upstream develop.

Fetch upstream changes.

{% highlight bash %}
   $ git fetch upstream develop 
{% endhighlight %}

This fetches the commits from upstream develop and stores the state
locally in **remotes/upstream/develop**.

>Remember there's nothing preventing you from working with
>remotes/upstream/develop, it can be usefull to diff or merge against.
>
>You can even check it out `$ git checkout upstream/develop`, but you
>would then be in a 'HEAD less state' ie. you are not actually on a branch.
>I'll use this in an example below.

Now bring your develop branch up-to-date with upstream.

{% highlight bash %}

$ git checkout develop
$ git merge upstream/develop

{% endhighlight %}

### Start your branch
{% highlight bash %}

$ git branch my_branch
$ git checkout my_branch

{% endhighlight %}

You are now on your branch, which is up-to-date with the the current
state of upstream develop and you are ready to start development.

As time goes by while you work on your feature, additions are being
added to upstream/develop. It is prudent to re-sync your changes with
upstream develop frequently, to prevent straying too far from
development head.

Next Read : [How to resync your feature branch with upstream
develop](../resync-with-upstream).

----

Alternative methods.

####Method 1

The example above was deliberately written in longhand (fetch, merge,
branch, checkout) to show what is actually happening, but I could have
been more concise by using pull to replace fetch and merge and the `-b`
option on chekcout.

{% highlight bash %}

$ git checkout develop              # Important!: to get onto develop branch !
$ git pull upstream develop         # combinded fetch & merge from upstream develop
                                    # onto current working tree
$ git checkout -b my_feature_branch # combined create & checkout of feature branch

{% endhighlight %}


####Method 2

Avoids the merge altogether and uses upstream/develop mentioned above.

{% highlight bash %}

$ git fetch upstream develop
$ git checkout upstream/develop       # HEAD less state
$ git checkout -b my_feature_branch   # create and checkout feature branch	

# This can be shortened further to

$ git fetch upstream develop
$ git checkout -b new_feature upstream/develop

{% endhighlight %}

