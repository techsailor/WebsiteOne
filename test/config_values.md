---
layout: jumbotron-narrow/default
---

###check config

* site.url {{ site.url}}

* title {{ title }}

* site.title {{ site.title }}
* jhead {{page.jhead}}
* jlead {{ page.jlead }}
* jbutton {{ page.jbutton }}

---

###pages

<ul>
  {% for list_page in site.pages %}
  <li>File {{ list_page.path }}</li>
  <ul>
    <li>list_page.title {{ list_page.title }}</li>
    <li>list_page.path {{ list_page.path }}</li>
    <li>Prepended: "{{ list_page.url | prepend: site.url }}"</li>
  </ul>
  {% endfor %}
</ul>
