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

This site was a fun project. I challenged myself to try tools I'd never used before, ruling out familiar options like [Node][node] and [Vite][vite]. My needs were simple anyhow - I didn't need reactive webpages or complex server features. I just needed some lightweight scaffolding to serve static pages, coupled with a free hosting solution. Enter [GitHub Pages][gh-pages]! 


## GitHub Pages

I want to shake hands with whoever came up with this idea. To get your website up and running, you just have to push your project files to a Github repo. If the repo is named a certain way, Github recognizes it as source code for your personal website. It runs your files (HTML/JS/CSS) through a build pipeline and hosts them at a configurable URL. This happens every time you update the repo, applying changes to the site almost instantaneously. This workflow was perfect for me since it skipped past the boilerplate and let me focus on site content. There are other ways to achieve this, of course - Amazon offers [their own tool][aws-amplify] to deploy websites from public repos. Github won out because I prefer managing everything from one place - source code, deployment settings, etc. (I'm also more comfortable with the Github UI than AWS, which looks like a NASA control panel).

So now we have a way to build and deploy the site. But what if we could make it even easier?

## Jekyll

[Jekyll][jekyll] is a build tool that generates pages for your website. This confused me, initially, because static files like HTML shouldn't need additional processing to create a webpage. That's true - Jekyll just gives you *tons* more options when writing those files. One feature it supports is [Markdown][markdown], a universal syntax for text formatting. Formatting blogs is a pain in HTML since clutters your text with various tags. Markdown is much easier to work with, replacing tags with control characters. For example, writing **bold text** just requires a couple of asterisks; writing `code` just requires some tickmarks. You'll run into this syntax on text-focused sites like JIRA. It gives you a nice, blog-like look without requiring third-party tools like Wordpress. 

Another core component of Jekyll is **layouts**. A layout is basically an HTML template that surrounds your custom content. For example, notice how my site has an "About the author" section next to every article? Rather than copy-pasting the HTML, each article "inherits" from a shared layout. The layout consists of 1) a placeholder for article text and 2) the hard-coded fragment for "About the author." When Jekyll builds the site, it slots the article text into the placeholder and voila - every article gets an "About" section with identical formatting. I can tweak the appearance (e.g. update the author name) and see the change reflected everywhere. And if I want special behavior for some articles, I can just create more placeholders to override.

One implication of layouts is that, *hypothetically*, someone with really good design sense could distribute layouts for other people to use. People could override placeholders with their own info and tweak various settings to achieve the desired look. That brings us to the final topic - themes.

## Themes

The basic layouts on this site come from a Jekyll theme called [Minimal Mistakes][min-mistakes]. It provides all sorts of sleek features like headers, nav menus, and social links - a pretty expansive list. What's great is that you can customize the site once the core page structure is set up. I'll treat the site as an ongoing project and keep pushing updates - would love to try some niche visual stuff like shaders. Stay tuned!

## Wrap Up
Hopefully this was informative! Shoot me a message if I can edit or clarify anything.


[gh-pages]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
[vite]: https://vite.dev/guide/
[node]: https://nodejs.org/en/about
[aws-amplify]: [https://aws.amazon.com/amplify/hosting/]
[jekyll]: https://jekyllrb.com/
[markdown]: https://en.wikipedia.org/wiki/Markdown
[min-mistakes]: https://mmistakes.github.io/minimal-mistakes/about/