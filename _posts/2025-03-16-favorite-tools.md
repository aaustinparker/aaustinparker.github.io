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

My go-to tools! I install these right away when setting up a new machine. They're flexible and compatible with a huge range of projects. This list will probably grow as I keep trying new things.

## Docker

The [ultimate tool][docker] for passion projects and coding practice. You start with a [Dockerfile][dockerfile] consisting of commands that set up your dev environment (for example, installing packages that support coding in your favorite language, or importing certificates to talk to another machine). Every step is preserved in the Dockerfile and pushed to source control, letting other people create the same environment using the Dockerfile as a blueprint. Setup takes minutes and provides uniform behavior across platforms like Windows & Linux. 

This is incredibly handy for team collaboration, but also works wonders when solo coding. Not only can I clone desktop projects on my laptop if I decide to go outside and touch grass; I can also keep my workspace separate from my user space. Containers are isolated and don't pollute the file system with packages and other dependencies. If I decide to stop working on a specific project, I don't have to manually uninstall all the tools associated with it - I just have to delete the container. Neat freaks across the land, rejoice!

## VS Code

The infinitely customizable [code editor][vs-code]. I've only scratched the surface of what it can do, but I love the core design philosophy - let people install what they need. As much as I love beefy IDEs like IntelliJ, it feels like I never use 90% of the features yet still pay a performance penalty for their existence. VS Code doesn't make any assumptions and lets me handpick my own extensions like language support.

The trick, of course, is actually knowing what you need. I was so spoiled by IDEs that I couldn't figure out why VS Code was refusing to compile a simple C++ program, eventually realizing that editors don't come with built-in compilers (not my proudest moment). You need to configure small things that you previously took for granted, which might sound like a dealbreaker to people who only want to write code. But there's a big benefit to all this - you learn more about what you're actually doing. If you're writing C++, you might learn about compiling and linking files. You might learn about alternative build systems like [make][make]. Tearing away the abstraction can sometimes yield some cool insight.

But I haven't touched on my favorite part of VS Code - container support. Thanks to the [Dev Containers][dev-containers] extension, you can actually "containerize" the editor that you're using to write code! If you've set it up perfectly and want to share all your features and extensions with someone else, you just add a config file to source control (much like a Dockerfile) that others can use to spin up an identical instance of VS Code! Not only that, but Dev Containers is using Docker under the sheets, you can do this *in tandem* with a Dockerfile to create extremely portable code. It automates everything from installing packages to forcing a hot-pink editor theme on the entire squad. Now that's team-building!

## Windows Terminal

Embrace your inner hackerman and manage all your terminals [from a single window][windows-terminal]. Nowadays this utility comes bundled with Windows 11, but it used to be a niche add-on that I installed on my machines. You can launch any terminal you want in a new tab, whether it's a Windows-native Powershell or a third-party install like Git Bash. If you're like me and prefer Unix commands for some things and Powershell for others, this is a major efficiency boost. It also integrates with [Windows Subsystem for Linux][wsl] so you can interact with any Linux distro you've configured from a single shell. This synergizes well with Docker since WSL is essential for container creation on Windows.

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