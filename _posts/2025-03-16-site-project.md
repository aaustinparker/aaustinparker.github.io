---
title: "First Project: This Website!"
categories:
  - Projects
tags:
  - projects
  - webdev
toc: true
toc_sticky: true
toc_label: "Steps"
toc_icon: "arrow-progress"
---

This site was a fun project. I challenged myself to try something new, ruling out familiar tools like [Node][node] and [Vite][vite]. My needs were simple anyhow - I didn't need reactive webpages or complex servers. I just needed some lightweight scaffolding to serve static pages, coupled with a free hosting service. Enter [GitHub Pages][gh-pages]! 


## GitHub Pages

To get your site up and running, all you have to do is push your source code to a Github repo. You name the repo a certain way to indicate that it's your personal website. Githu then runs your files (HTML/JS/CSS) through a build pipeline and hosts them remotely. Once you've registered your domain with a DNS provider like Cloudflare, you just map it to Github's IP. It looks exactly like a self-hosted website from the user's perspective.

 Updates are easy too. Pushing code to your repo will redeploy the site almost instantly. No need to create a build pipeline so you can focus purely on site content. There are similar options out there - Amazon offers [their own tool][aws-amplify] for repo-based deployments. I chose Github just to manage source code and deployments from one place.

So now we have an easy way to deploy the site. But what if we could make it even easier?

## Jekyll

[Jekyll][jekyll] is a tool for generating webpages. It extends what we can accomplish with traditional tools like HTML. One of the big additions is [Markdown][markdown], a syntax used for formatting text. HTML is cumbersome since it clutters your text with blocky tags. Markdown uses special characters that are much less intrusive. For example, writing **bold text** just requires a couple of asterisks; writing `code` just requires some tickmarks. It gives you styling options without heavier tools like Wordpress.

Another big Jekyll feature is **layouts**. A layout is basically an reusable template that wraps custom content. For example, my site has an "About the author" section next to each article. That comes from a shared layout. It consists of a hard-coded "About" section and an article placeholder. When Jekyll builds the site, it inserts each article into the template and voila - every page has an "About" section. I can change the author name and see that change reflected everywhere.

That raises an interesting question - what if you published layouts for other people to use? You'd be doing a public service if you have a knack for UI design. That brings us to the final topic - themes.

## Themes

The layouts on this site come from a Jekyll theme called [Minimal Mistakes][min-mistakes]. It includes key features like headers, nav menus, and paging - perfect for blogs. It's a handy way to scaffold before adding custom styles. 

I'll treat this site as an ongoing project and keep pushing updates - would love to try some niche visual stuff like CSS animations. Stay tuned!

## Wrap Up
Hopefully this was informative. Shoot me an email if I can edit or clarify anything.

If you're curious, the code for the site can be found [here][github].


[gh-pages]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
[vite]: https://vite.dev/guide/
[node]: https://nodejs.org/en/about
[aws-amplify]: [https://aws.amazon.com/amplify/hosting/]
[jekyll]: https://jekyllrb.com/
[markdown]: https://en.wikipedia.org/wiki/Markdown
[min-mistakes]: https://mmistakes.github.io/minimal-mistakes/about/
[github]: https://github.com/aaustinparker/aaustinparker.github.io