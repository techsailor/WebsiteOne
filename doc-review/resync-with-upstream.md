---
layout: jumbotron-narrow/default
title:
---

##Synching with upstream

There are two fundamental ways to do this.

* merge
* rebase

We have adopted to rebase, since this keeps the history cleaner. You can read more about this here [link??](#).

### Fetch and Rebase with upstream

{% highlight bash %}

git fetch upstream develop
git checkout my_feature
git rebase upstream/develop

{% endhighlight %}

####Alternative methods

Merge upstream changes into your local develop branch then rebase
against that.

You end up with an up-to-date local develop branch to browse or diff
against.

{% highlight bash %}


git checkout develop
git pull upstream develop # combined fetch & merge
git checkout my_feature   # get onto your branch
git rebase develop        # rebase you changes against develop branch

{% endhighlight %}

##Read more

* Rebase vs Merge

Next [Submit a Pull Request](http://agileventures.org/projects/websiteone/documents/how-to-submit-a-pull-request-on-github)