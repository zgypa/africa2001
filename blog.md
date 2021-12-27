---
permalink: /blog/
---

## Blog

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})

<small>{{ post.date | date: "%Y-%m-%d" }}</small>

{{ post.excerpt }}
<hr/>

{% endfor %}
