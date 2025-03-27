---
title: "Project One: This Webstite!"
categories:
  - Projects
tags:
  - projects
toc: true
toc_sticky: true
toc_label: "Steps"
toc_icon: "arrow-progress"
---

This website was a fun project. I wanted to keep it simple and started out with only a single self-imposed requirement - trying something new. I've used tools like [Node][node] and [Vite][vite] to design websites, but my needs were much simpler his time. I didn't need reactive webpages or a complicated backend - just a handful of basic, static pages. So ruling out the major frameworks, I looked for free tools that came bundled with a hosting solution. Enter [GitHub Pages][gh-pages]! 


## GitHub Pages

I want to shake hands with whoever came up with this idea. To get a website up and running, you just have to push your static pages to a Github repo. If the repo name matches your username, Github recognizes it as the code for your personal website. It then runs the site through a preset build pipeline and hosts it at the URL of your choice. This process repeats whenever you push code, with only a short delay before you see the changes reflected on your website. This saves a ton of legwork and lets you focus on site content, making it a perfect fit for my situation. There are other tools out there, with Amazon offering [their own cool option][aws-amplify] that I've experimented with. The great thing about Github, of course, is that I can see manage my source code and website settings in one place. I'm also comfortable with their UI - AWS looks more like controlling a Mars rover. 

So now we have a hosting solution. But someone dared to ask - what if we made it even easier?

## Jekyll

[Jekyll][https://jekyllrb.com/] is a tool that takes your static files and generates a final website. This confused me, initially, because static files like HTML shouldn't need additional processing to display in a browser. That's true, but Jekyll gives you *way* more options when writing those files. One feature it supports is [Markdown][markdown], a syntax for simple text formatting. Writing long paragraphs in HTML can be cumbersome since it fills your text with HTML tags that require proper spellings, closures, etc. Markdown is much easier to read and maintain, using control characters in place of tags. I just add a couple asterisks for **bold text** and some ticks for `code`, something you see on lots of websites these days like JIRA. Needless to say, it's a big plus for a text-focused blog or personal site. Jekyll, conveniently, converts Markdown into HTML during the build process. The resulting HTML is then doled out to visitors. This is perfect if you want formatted pages without too much custom code (or a paid service like Wordpress).

Another key concept in Jekyll is the **layout**. This is the core HTML of a webpage that Markdown gets slotted into. By way of example, notice how my site has an "About the author" section next to every article. Rather than copy-pasting that HTML everywhere, each article inherits from a shared "article layout." This is basically just an HTML file with two things: 1) a placeholder for each article and 2) the HTML fragment for "About the author." When Jekyll builds the site, iit creates articles by simply by slotting the text into the placeholder section. And voila - every article now comes with an "About" section. This "About" fragment is shared everywhere, so I can change something like font size and have it apply everywhere. And if the site has multiple authors? No problem. You just define another "placeholder" in the layout, same as the article text. Each article can then override the author details if needed.

One implication of layouts is that, *hypothetically*, someone with really good design sense could distribute layouts for other people to use. People could override placeholders with their own information and tweak various settings to achieve their desired look. That brings us to the final topic - themes.

## Themes

The building blocks of this site come from a Jekyll theme called [Minimal Mistakes][min-mistakes]. I inherited all sorts of cool layouts from the author, while retaining the freedom to customize things to my liking. I hope to keep plugging away at the site and learning from the experience.

## Wrap Up
Hopefully this was an informative read! Shoot me a message if I can edit or clarify anything.


[gh-pages]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
[vite]: https://vite.dev/guide/
[node]: https://nodejs.org/en/about
[aws-amplify]: [https://aws.amazon.com/amplify/hosting/]
[jekyll]: https://jekyllrb.com/
[markdown]: https://en.wikipedia.org/wiki/Markdown
[min-mistakes]: https://mmistakes.github.io/minimal-mistakes/about/
