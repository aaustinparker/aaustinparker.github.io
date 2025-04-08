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

This website was a fun project. I challenged myself to try a tool I'd never used before, ruling out familiar options like [Node][node] and [Vite][vite]. My needs were simple anyhow - I didn't need reactive webpages or complicated server features. I just needed some lightweight scaffolding to support static pages, along with a free hosting solution if possible. Enter [GitHub Pages][gh-pages]! 


## GitHub Pages

I want to shake hands with whoever came up with this idea. To get a website up and running, all you have to do is push your web content to a Github repo. If the repo name matches your username, Github treats it as source code for a personal website. It runs your files through a build pipeline and hosts them at a configurable URL. This happens every time you push code to your repo, applying changes to the website after a brief delay. This workflow was perfect for me since it eliminated legwork and let me focus on blog-type content. There are other ways to achieve this, of course - Amazon offers [their own tool][aws-amplify] to build websites from a public repo. Github wins out just because I can manage everything from one place - source code, deployment settings, etc. I'm also more comfortable with Github's UI than AWS (which looks like the control panel for a SpaceX rocket).

So now we have a hosting solution. But someone dared to ask - what if we could make it even easier?

## Jekyll

[Jekyll][https://jekyllrb.com/] is a build tool that generates a website from your static files (JS, HTML, CSS). This confused me, initially, because static files like HTML shouldn't need additional processing to create a webpage. That's true - Jekyll just gives you *tons* more options when creating those files. One feature it offers is [Markdown][markdown], a universal syntax for formatting text. HTML formatting is often cumbersome as it clutters your text with ugly tags that distract from the real content. Markdown is easier to read and write, using special characters instead of tags. For example, writing **bold text** just requires a couple asterisks; writing `code` just requires some tickmarks. You'll run into this syntax on tons of text-focused sites like JIRA. It gives you a nice, blog-like appearance without paying for additional tools like Wordpress. 

Another core component of Jekyll is **layouts**. A layout is basically an HTML template that your content gets inserted into. For example, notice how my site has an "About the author" section next to every article? Rather than copy-pasting the HTML, each article inherits from a shared "article layout." This is basically an HTML file with 1) placeholders for article text and 2) an HTML fragment for "About the author." When Jekyll builds the site, it slots the text for each article into the placeholder. And voila - every article now has an "About" section with identical formatting. I can modify that section (e.g. increase the font size) and see the change reflected everywhere. And if I want special sections for some articles, I'd just create a new placeholder for the chosen few to override.

One implication of layouts is that, *hypothetically*, someone with really good design sense could distribute layouts for other people to use. People could overwrite placeholders with their own info and tweak various settings to achieve the desired look. That brings us to the final topic - themes.

## Themes

The core layouts on this site come from a Jekyll theme called [Minimal Mistakes][min-mistakes]. I inherited all sorts of neat building blocks while retaining the freedom to customize everything. The site will be an ongoing project as I come up with ideas and tweaks.

## Wrap Up
Hopefully this was informative! Shoot me a message if I can edit or clarify anything.


[gh-pages]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
[vite]: https://vite.dev/guide/
[node]: https://nodejs.org/en/about
[aws-amplify]: [https://aws.amazon.com/amplify/hosting/]
[jekyll]: https://jekyllrb.com/
[markdown]: https://en.wikipedia.org/wiki/Markdown
[min-mistakes]: https://mmistakes.github.io/minimal-mistakes/about/