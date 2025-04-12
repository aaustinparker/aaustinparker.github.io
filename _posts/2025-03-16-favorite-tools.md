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

Everyone has tools they love for coding. I want to mention some of mine in the hopes of evangelizing people who haven't used them yet. They're flexible and compatible with a huge range of projects.

## Docker

I love [Docker][docker] for a few reasons. First and foremost, I can easily switch between desktop and laptop when writing code. Maintaining two workspaces is a chore, especially when you're making tiny tweaks to get a program running. As an example, I recently wrote a small OpenGL program that drew some shapes. I installed a couple packages and compiled some libraries on my desktop. Then I decided to touch grass, a rare occurrence! I cloned the project on my laptop and tried running it, but I suddenly had to remember everything I'd don to get it running before. Docker is awesome because it preserves the steps in a [Dockerfile][dockerfile] that instantly replicates your workspace. Once the Dockerfile goes into source control, people can start collaborating right away. They can even use different operating systems as long as they support Docker.

Another cool thing? I don't have to worry about cluttering up my computer. All the tools and dependencies I install are living in a container, isolated from the underlying system. Once I'm done with a project, I just delete the enclosing container and I'm done! No need to track down and uninstall things. Big plus for neat freaks!

## VS Code

The infinitely customizable [code editor][vs-code]. I've only scratched the surface of what it can do, but I love the philosophy at its core - only give people what they want. As much as I love beefy IDEs like IntelliJ, I've never used a bunch of their features. Despite this, I still pay a penalty in the form of UI clutter and occasional performance dips. VS Code doesn't make any assumptions and lets me handpick the features I need - language support, build tools, etc.

The trick, of course, is actually *knowing* what you need. I was so spoiled by IDEs that I couldn't figure out why my shiny new editor was refusing to compile a simple program. Not my proudest moment - I eventually realized that editors don't come with built-in compilers. You need to set up your workspace first, which might sound like a chore to people who just want to write code. But there's a big benefit to this - you learn about what's actually happening under the sheets. If you're writing programs in C++, you might learn about linking dynamic libraries or using buildsystems like [make][make]. Tearing away abstractions can sometimes yield useful insight.

But I haven't touched on my favorite part of VS Code - container support. Thanks to the [Dev Containers][dev-containers] extension, you can go as far as "containerizing" your whole editor. To share themes and extensions with other people, just package your settings in a config file and push it to source control. When people open your project in their own containers, they'll get your exact editor right down to the color scheme. This feature is implemented with Docker so you can combine it with Dockerfiles for maximum portability. One person does the legwork to figure out what extensions and build tools are needed - everyone else gets it for free.

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