---
layout: page
title: Gallery
---

<section class="gallery">
    {% for image in site.gallery_files %}
        <img src="{{ site.baseurl }}{{ image.path }}" alt="image" />
        <div class="gallery__item">
            <input type="radio" id="img-{{ forloop.index }}" checked name="gallery" class="gallery__selector"/>
            <img class="gallery__img" src="{{ site.baseurl }}{{ image.path }}" alt=""/>
            <label for="img-[[ forloop.index }}" class="gallery__thumb"><img src="{{ site.baseurl }}{{ image.path }}" alt=""/></label>
        </div>
    {% endfor %}
</section>