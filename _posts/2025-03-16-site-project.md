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

Creating this site was a fun project. There's no shortage of tools avaiable, and I came into the project with only a single self-imposed requirement - to try something new. I've used tools like [Node][node] and [Vite][vite] to create web content, but my needs were more modest this time. In a nutshell, I just needed to dole out a tiny handful of static pages to visitors, not handle data or process events. A simple hosting solution would also be perfect. Enter [GitHub Pages][gh-pages]! 


## GitHub Pages

I want to shake hands with the heroic individual who came up with this idea. To get a website up and running, all you have to do is push your static pages to a Github repo (HTML, CSS, JS). If you give it a proper name, Github recognizes the repo as your personal website. It then builds the site and hosts it at whatever URL you configure. This process repeats every time you push new code, with only a brief delay before you see the code go live on your site. This saves a ton of legwork and lets you focus on your site content, making it a perfect fit for my situation. There are other, similar tools out there, with Amazon offering [their own service][aws-amplify] that I've experimented with. The great thing about Github, however, is that I can see all the source code and website settings in one place rather than jumping back and forth. I also get to keep using its familiar UI.

So now we have a hosting solution. But then someone dared to ask - what if we made it even easier?

## Jekyll

[Jekyll][https://jekyllrb.com/] is a tool that takes static files as input and generates your final website. This confused me, initially, because static files like HTML shouldn't need additional processing to display in a browser. And that's correct - Jekyll is just giving you *way* more options when writing those files. One feature it enables is [Markdown][markdown], a handy language that exists solely for formatting text. Writing long paragraphs in HTML has always been ugly and error-prone, since it blends text content with HTML tags that require proper spellings, closures, etc. Markdown is a simple alternative with clean syntax - typically you just need a single control character to format **bold text** or `code`. This makes your text content easier to read and edit, very important for blogs and similar sites. Jekyll, conveniently, can convert Markdown into HTML during the build process. The generated HTML is then served as live content on our site. This is perfect for small projects that don't want to rely on paid services like Wordpress to format pages.

Another key feature of Jekyll is the concept of **layouts**. This is the core structure of a webpage that markdown is inserted into. For example, notice how my site has an "About the author" section next to every article. Rather than copy-pasting that HTML everywhere, I could just define an "article layout" inherited by everything I publish. It includes two things: 1) a placeholder for article text and 2) an HTML fragment for "About the author." While building the site, Jekyll generates articles by simply replacing the placeholder with real text. And voila - every article has an "About" section. This single fragment is shared everywhere, so changing the font size would immediately reflect on each article. And if your site has multiple authors? No problem. You just define another "placeholder" in the layout, just like the article text. Each article can override this value independently.

One implication of layouts is that, *hypothetically*, someone with really good design sense could distribute layouts for other people to use. People could override placeholders with their own details and tweak various settings to achieve their desired look. That brings us to the last major block of this site - themes.

## Themes

I used a Jekyll theme called [Minimal Mistakes][min-mistakes] as the design foundation for this site. Thus I inherited all sorts of cool layouts from the author, one of which is the current layout of this page. This suited my short-term goal of spinning up a functional website, and I plan to augment it with my own ideas over time. I couldn't ask for a better starting point, though.

## Wrap Up
Hopefully this was an informative read! I hope to keep plugging away at this site and learning from the experience.


[gh-pages]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
[vite]: https://vite.dev/guide/
[node]: https://nodejs.org/en/about
[aws-amplify]: [https://aws.amazon.com/amplify/hosting/]
[jekyll]: https://jekyllrb.com/
[markdown]: https://en.wikipedia.org/wiki/Markdown
[min-mistakes]: https://mmistakes.github.io/minimal-mistakes/about/
