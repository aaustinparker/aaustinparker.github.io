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

Everyone has their go-to tools for coding. I want to mention mine in the hopes of evangelizing people who haven't used them yet. They're flexible and compatible with a huge range of projects.

## Docker

I love [Docker][docker] for a few reasons. First and foremost, I can easily switch between desktop and laptop when writing code. Maintaining two workspaces is a chore, especially when you're making tiny tweaks to get a program running. To give an example, I recently wrote a tiny OpenGL program to draw some shapes. I installed the required packages and compiled a couple libraries on my desktop. Then I decided to touch grass, a rare occurrence! I cloned the project on my laptop and tried running it, but I couldn't remember the exact steps to get everything set up. Docker is awesome because it preserves the steps in a [Dockerfile][dockerfile] that instantly configures your new workspace. It lets you choose any image as a starting point, most of which have dependencies pre-installed. This is great if you're trying to learn a new language since you can just defer to the experts on what you need to get going. You can also add your own commands to the Dockerfile for more granular setup. Once complete, you push the Dockerfile to source control and can easily weclome new people onboard. They can even use a different OS for development as long as it supports Docker.

Another cool thing? I don't have to worry about cluttering up my computer. All the tools and dependencies I install are living in a container, isolated from the underlying system. Once I'm done with a project, I just delete the parent container and I'm done! No need to track down and uninstall things. Big plus for neat freaks!

## VS Code

The infinitely customizable [code editor][vs-code]. I've only scratched the surface of what it can do, but I love the philosophy at its core - only give people what they want. As much as I love beefy IDEs like IntelliJ, I've never used most of their default tools. Despite this, I still pay a penalty for those features with UI clutter and performance hits. VS Code doesn't make any assumptions and lets me handpick the features I need - language support, build tools, etc.

The trick, of course, is actually *knowing* what you need. I was so spoiled by IDEs that I couldn't figure out why my shiny new editor was refusing to compile a simple program. Not my proudest moment - I eventually realized that editors don't come with built-in compilers. You need to set up your workspace before coding, which might sound like a chore to people who just want to get started. But there's a big benefit to this - you learn about what's actually happening under the sheets. If you're writing programs in C++, you might learn how to link dynamic libraries or use buildsystems like [make][make]. Tearing away abstractions can sometimes yield helpful insight.

But I haven't touched on my favorite part of VS Code - container support. Thanks to the [Dev Containers][dev-containers] extension, you can actually "containerize" your whole editor. To share themes and extensions with the other devs, just bundle your settings in a config file and push it to source control. When someone starts a container from your project, they'll get your exact editor right down to the color scheme. This feature is implemented using Docker so you can combine it with Dockerfiles for maximum portability. One person does the work to figure out which extensions and build tools are needed, then everyone else gets them for free.

## Windows Terminal

A simple interface to manage all your terminals [from one place][windows-terminal]. Nowadays this feature comes bundled with Windows 11, but it used to be a niche add-on that I would install myself. You can launch any terminal you want from a single window, whether it's a built-in terminal like Powershell or a third-party shell like Git Bash. If you're like me and prefer Unix-style commands for some tasks and Powershell for others, this is a big efficiency boost. It also works with [Windows Subsystem for Linux][wsl] so you can launch shells for any Linux distro you've installed.

## Honorable Mentions
- Notepad++
- Chrome Dev Tools
- Copilot

[docker]: https://www.docker.com/
[dockerfile]: https://docs.docker.com/reference/dockerfile/
[vs-code]: https://code.visualstudio.com/
[make]: https://www.gnu.org/software/make/manual/make.html
[dev-containers]: https://code.visualstudio.com/docs/devcontainers/containers
[windows-terminal]: https://learn.microsoft.com/en-us/windows/terminal/
[wsl]: https://learn.microsoft.com/en-us/windows/wsl/