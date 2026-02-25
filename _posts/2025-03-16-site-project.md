---
title: "First Project: This Website!"
categories:
  - Projects
tags:
  - projects
toc: true
toc_sticky: true
toc_label: "Steps"
toc_icon: "arrow-progress"
---

This site was a fun project. I challenged myself to try something new, ruling out familiar tools like [Node][node] and [Vite][vite]. My needs were simple anyhow - I didn't need reactive webpages or complex servers. I just needed some lightweight scaffolding to serve static pages, coupled with a free hosting service. Enter [GitHub Pages][gh-pages]! 


## GitHub Pages

To get your site up and running, all you have to do is push your source code to a Github repo. The repo name signals to Github that this is as a website to deploy. It runs your files (HTML/JS/CSS) through a build pipeline and hosts them remotely. Once you've registered your domain (e.g. *apdevelopercorner.com*) with a DNS provider like Cloudflare, you just map it to Github's hosting endpoint. It looks exactly like a self-hosted website from the user's perspective.

 Updates are easy too. Pushing to your repo triggers a rebuild via Github Actions, making your edits visible almost instantly. This workflow is perfect since it reduces setup and lets you focus on content. There are similar options out there - Amazon offers [their own tool][aws-amplify] for repo deployments. I chose Github just because I like managing everything from one place - source code, deployment settings, etc.

So now we have an easy way to deploy the site. But what if we could make it even easier?

## Jekyll

[Jekyll][jekyll] is a build tool that generates webpages. This might sound confusing since HTML files don't require any extra processing to render. That's true - Jekyll just extends what your files can do. One of the biggest additions is [Markdown][markdown], a handy syntax for formatting text. Blogging is cumbersome with HTML since it clutters your text with blocky tags. Markdown uses simple characters that are much less verbose and intrusive. For example, writing **bold text** just requires a couple of asterisks; writing `code` just requires some tickmarks. It gives you a nice, blog-like feel without extra tools like Wordpress.

Another big feature in Jekyll is **layouts**. A layout is basically an HTML template wrapping custom content. For example, notice how my site has an "About the author" section next to each article? That's inherited from a shared layout. It consists of a hard-coded "About" section and a placeholder for article text. When Jekyll builds the site, it slots each article into the placeholder area and voila - every page has an "About" section. I can tweak the visuals (e.g. update the author name) and see that change reflected everywhere.

Another benefit is that people with good design sense can distribute layouts for other people to use. Users can insert their own content and tweak various settings to achieve the desired look. That brings us to the final topic - themes.

## Themes

The layouts on this site come from a Jekyll theme called [Minimal Mistakes][min-mistakes]. It includes sleek features like headers, nav menus, and paging - perfect for blogs. It's a great scaffolding tool before we add custom styles. 

I'll treat this site as an ongoing project and keep pushing updates - would love to try some niche visual stuff like CSS animations. Stay tuned!

## Wrap Up
Hopefully this was informative. Shoot me an email if I can edit or clarify anything.


[gh-pages]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
[vite]: https://vite.dev/guide/
[node]: https://nodejs.org/en/about
[aws-amplify]: [https://aws.amazon.com/amplify/hosting/]
[jekyll]: https://jekyllrb.com/
[markdown]: https://en.wikipedia.org/wiki/Markdown
[min-mistakes]: https://mmistakes.github.io/minimal-mistakes/about/