---
permalink: /ABOUT/
---

# About

This GitHub Demo Page was made for the Cloud Kilat Webinar.
Please feel free to clone/fork/hijack/whatever it!

<br>
# More Information

<ul><li>
{% for ii in site.navbarlinks %}
  {% if ii.navbar == "GitHub Page" %}
    <a href="{{ ii.link | relative_url }}">{{ ii.navbar }}</a>
  {% endif %}
{% endfor %}
</li><li>
{% for ii in site.navbarlinks %}
  {% if ii.navbar == "GitHub" %}
    <a href="{{ ii.link | relative_url }}">{{ ii.navbar }}</a>
  {% endif %}
{% endfor %}
</li></ul><br>

<br>
<img src="{{ site.baseurl }}/pictures/JPG-012.jpg" alt="Default" style="width:960">

<br>
# Qapla!
<br>

