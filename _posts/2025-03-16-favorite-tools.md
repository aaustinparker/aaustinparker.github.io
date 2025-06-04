---
title: "Tools of the Trade"
categories:
  - Development
tags:
  - tools
toc: true
toc_sticky: true
toc_label: "Tools"
toc_icon: "wrench"
---

Everyone has their favorite tools for coding. I want to go over mine in the hopes of persuading people who haven't tried them yet. They're flexible and compatible with a wide range of projects.

## Docker

I love [Docker][docker] for a few reasons. First and foremost, I can easily switch between desktop and laptop when working on personal projects. To give an example, I recently wrote a simple OpenGL program to draw some shapes. I installed the required packages and compiled some libraries on my desktop. Then I decided to go outside, a rare event! I cloned the project on my laptop and tried running it, but I couldn't remember the steps I'd followed to get everything working.The code didn't run and I wound up wasting a bunch of time to replicate my desktop setup.

Docker is awesome because it records the setup in a [Dockerfile][dockerfile] that can replicate your workspace anywhere. You can even use a base image published by another person to pre-install most of your dependencies. This is really helpful when learning new languages since you can just defer to experts on what you need to get coding. You can also include customs commands to suit your specific needs. Once complete, you can push your Dockerfile to source control and start collaborating with other people right away. They can code in whatever environment they like as long as it supports Docker.

Another cool thing? I don't have to worry about cluttering my computer. All my tools and dependencies are living in a Docker container, isolated from the underlying filesystem. Once I'm done with a project, I just delete the parent container and I'm done! No need to track down and uninstall things. Big plus for neat freaks!

## VS Code

The infinitely customizable [code editor][vs-code]. I've only scratched the surface of what it can do, but I love the philosophy at its core - give people exactly what they need. As much as I love beefy IDEs like IntelliJ, I've never used the vast majority of the default tools. Yet I still pay a penalty for their existence - UI clutter, performance hits from background processes, etc. VS Code doesn't make any assumptions and lets me handpick the features I need. I install them as "extensions" from a huge list of options, many of which are open-source.

The trick, of course, is actually *knowing* what you need. I was so spoiled by IDEs that I couldn't figure out why my shiny new editor was refusing to compile a simple program. Not my proudest moment - I eventually realized that editors don't come with built-in compilers. You need to set up your workspace before you start coding, which might sound like a chore to people who just want to write programs. But there's a big benefit to this - you learn about what's actually happening behind the scenes. If you're writing code in C++, you might learn about linking dynamic libraries or using buildsystems like [make][make]. Tearing away abstractions can sometimes yield useful insight.

But I haven't mentioned my favorite part of VS Code - Docker integration. Thanks to the [Dev Containers][dev-containers] extension, you can "containerize" your whole editor! To share your themes and extensions with the other devs, just put your settings in a config file and push it to source control. When someone clones your project and launches a container, they'll get your exact editor right down to the color scheme. This feature synergizes with Dockerfiles for a insane degree of portability. One person does the legwork to figure out which extensions and build tools are required, then everyone else gets them for free.

## Windows Terminal

A simple tool to manage all your terminals [from one place][windows-terminal]. Nowadays this comes bundled with Windows 11, but it used to be a niche add-on that I installed manually. You can launch any terminal you want from a single interface, whether it's a built-in option like Powershell or a third-party shell like Git Bash. If you're like me and prefer Linux commands for certain tasks and Powershell for others, this is a big efficiency boost. It also integrates with [Windows Subsystem for Linux][wsl] so you can launch a shell for your installed Linux distros.

## Honorable Mentions
- Postman
- Chrome Dev Tools
- Github Copilot
- Notepad++

[docker]: https://www.docker.com/
[dockerfile]: https://docs.docker.com/reference/dockerfile/
[vs-code]: https://code.visualstudio.com/
[make]: https://www.gnu.org/software/make/manual/make.html
[dev-containers]: https://code.visualstudio.com/docs/devcontainers/containers
[windows-terminal]: https://learn.microsoft.com/en-us/windows/terminal/
[wsl]: https://learn.microsoft.com/en-us/windows/wsl/