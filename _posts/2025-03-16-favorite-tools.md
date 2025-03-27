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

My go-to tools! I install these right away when setting up a new machine. They're flexible and compatible with a huge range of projects. This list will grow as I keep trying new things.

## Docker

The [ultimate tool][docker] for passion projects and coding practice. You start with a [Dockerfile][dockerfile] full of commands that set up your dev environment (for example, installing packages that support coding in your favorite language, or importing certificates to talk to another machine). Every step is recorded in the Dockerfile and pushed to source control, letting others build an identical environment using your Dockerfile as a blueprint. Setup is quick and gives you uniform behavior across platforms like Windows & Linux. 

This is amazing for team collaboration, but also works wonders when solo coding. Not only can I copy projects to my laptop if I want to go outside and touch grass; I can also keep my workspaces clean and separate. Anything I install or configure
 in an aptly named **Docker container** is isolated, not affecting my host machine (or other containers) unless I take deliberate steps to allow that. So if I decide to stop working on a project, I don't have to manually uninstall all the tools associated with it - I just have to delete the container. Neat freaks across the world, rejoice!

## VS Code

The infinitely customizable [code editor][vs-code]. I've only scratched the surface of its capabilities, but I love the core philosophy - only provide what people want. As much as I love beefy IDEs like IntelliJ, I don't use 90% of the features yet still pay a performance penalty for their existence. VS Code doesn't make any assumptions and lets me handpick extensions like language support.

The trick, of course, is knowing what you need. I was so spoiled by IDEs that I couldn't figure out why my shiny code editor was refusing to compile a simple C++ program. Not my proudest moment, but eventually I realized that editors don't have built-in compilers. You need to configure small things like that to get anything done, which might be a nuisance to people who want to focus on coding. But there's a big benefit to all this - you learn more about what you're actually doing. When writing a C++ program, you might learn about linking libraries or using an unfamiliar build system like [make][make]. Tearing away abstractions can sometimes yield useful insight.

But I haven't mentioned my favorite part of VS Code - container support. Thanks to the [Dev Containers][dev-containers] extension, you can actually "containerize" the editor that you're writing code in! If you want to share your themes and extensions with someone else, you just add a config file to source control (like a Dockerfile) that others can use to create an identical instance of VS Code! Not only that, but since Dev Containers uses Docker under the sheets, you can use it *in tandem* with a Dockerfile to create extremely an portable project. It automates everything from package installation to forcing a hot-pink editor on the entire team. Now that's building culture!

## Windows Terminal

Embrace your inner hackerman and manage all your terminals [from a single window][windows-terminal]. Nowadays this utility comes bundled with Windows 11, but it used to be a niche add-on that I always installed right away. You can launch any terminal from one location, whether it's built-in like Powershell or installed manually like Git Bash. If you're like me and prefer Unix commands for some things and Powershell for others, this is a big efficiency boost. It also works with [Windows Subsystem for Linux][wsl] so you can launch shells for any installed Linux distros.

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