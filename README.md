## The Reunion Project

Usage

1. Midnight Theme. Use the GitHub Pages [Midnight Theme](https://github.com/pages-themes/midnight/blob/master/README.md) as a resource.  This project started with customization of _layouts/default.html from the Midnight Theme.  If you wanted to use a different [GitHub Pages](https://pages.github.com/themes/), you would similarly need to change _layouts/default.html according to that theme.  Observe comment at top of _layouts/default.html ...

```html
<!-- _layouts/default.html
     customization added to original midnight theme found through GitHub Pages -->
```

2. Preview Site (Option A) - [Testing your GitHub Pages site locally with Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll).  This instruction provides instructions for ruby `Gemfile`,`bundle install`.  As an addition add `.gitignore` to avoid seeing build files in commit.   After pre-requisites run this command to obtain prompt for web server ...

```bash
bundle exec jekyll serve
```

3. Preview Site (Option B) - [GitHub Pages Ruby Gem](https:/env/github.com/github/pages-gem) has additional information.  This instruction provides instructions same ruby requirements `Gemfile`,`bundle install`.   This README looks like basis of some things in FastPages as it uses Docker and requires you to setup a `Makefile` from their site.

4. Customizing style (CSS).  This project uses `/assets/css/style.scss` as the location to customize your CSS. To avoid warnings in VSCode make sure you install `SCSS IntelliSense` plugin.  To understand default style, make sure you ***Preview Site*** and refer to build generated `_site/assets/css/style.css` (this is worth 1000 lectures).  For the reunion site `gallery.md` uses custom style from `assets/css/style.css` to support 3 images per row.  Observe file and position of import and custom CSS, order is important as clarified in Midnight Theme readme. ...

```css
---
---

@import "{{ site.theme }}";

/* "row style" is flexible size and aligns pictures in center */
.row {
    align-items: center;
    display: flex;
  }
  
  /* "column style" is one-third of the width with padding */
  .column {
    flex: 33.33%;
    padding: 5px;
  }
```

