---
layout: jumbotron-narrow/default
jhead: I've had some thoughts ..
jlead: "For easing the 'take-on load' "
jbutton: Step in an see ...
jurl: /doc-review/t1
---
## Document review

### New user documentation

I started to go through the documentation at agileventures.org with
an aim to review, which articles were good as introductions to getting
set up with Agile Venture Projects.

* First I [listed the articles](/doc-review/agv_docs/) and documents
only under one project (WebsiteOne) for the time being.

> I did this first as a spreadsheet, then moved it to a wso article, but
> found that it was quicker and easier to work with the plain text file
> and Markdown.

* I also re-visited
[agileventures.org/getting-started](http://agileventures.org/getting-started)

>Although this article does provide all the information required to get
>going, it also provides a narative about the background and philosophy
>and thus looses some of the emphasis on the list of things to do.

So I thought I'd try and produce one screen with only the _"What"_
and leave the _Why_ for maybe an introductory article.

I couldn't remove the steps per-se, but managed to reduce them into
only six Topic areas, and attempted to make this page generic, so that
it can sit above the project specific documentation.

1. Scrums
2. Pairing
3. Accounts required
4. Requests to join
5. VM Setup
6. Working with the Code base

It's a first stab at trying to bring the information together. See
what you think. 

As I mentioned the git articles were written in Markdown using Liquid
templates (Jekyll) and is hosted as a Github page. It's not using the
WSO style-sheet and I have made no real effort in emulating WSO apart
from using the orange and slate-blue colours, just to give it a wso
feel.

I haven't written (or linked to) all sub articles yet (I did a little
work on 3 of the 4 git articles) and linked elsewhere, where I
could.


[Getting Started](/doc-review/agv_getting_started/)
{% comment %}
{% include jumbotron-narrow/jumbotron.html %}
{% endcomment %}


{{ content }}
