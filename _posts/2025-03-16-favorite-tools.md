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

I love [Docker][docker] for a few reasons. First and foremost, I can easily switch between desktop and laptop when writing code. Maintaining two workspaces is a chore when you're making tiny tweaks to get a program running. For example, I recently wrote a program with OpenGL to draw some simple shapes. I installed a couple packages and compiled some libraries from Github. Then I decided to touch grass, a rare occurrence! I cloned the project on my laptop and tried running it, but I had to remember all the hoops I'd jumped through to get it running before. Docker is awesome because it preserves the steps in a [Dockerfile][dockerfile] that can replicate your workspace on any machine. Once the Dockerfile goes into source control, people can start collaborating with minimal delay. They can even stick to their favorite OS as long as it supports Docker.

Another cool thing? I don't have to worry about cluttering up my computer. All the tools and dependencies I install are living in a container, isolated from the underlying filesystem. Once I'm done with a project, I just delete the enclosing container and I'm done! No need to track down and uninstall things. Big plus for neat freaks!

## VS Code

The infinitely customizable [code editor][vs-code]. I've only scratched the surface of what it can do, but I love the philosophy at its core - only give people what they want. As much as I love beefy IDEs like IntelliJ, I probably won't use 90% of the features they provide. Yet still I pay a penalty when it comes to UI clutter and occasional performance drops. VS Code doesn't make any assumptions and lets me handpick the features I need - language support, build tools, etc.

The trick, of course, is actually *knowing* what you need. I was so spoiled by IDEs that I couldn't figure out why my shiny new editor was refusing to compile a simple program. Not my proudest moment - I eventually realized that editors don't come with a built-in compiler. You need to set up your workflow before you start coding, which might sound annoying to people who just want to get started. But there's a big benefit to this - you learn more about what's happening under the sheets. If you're writing programs in C++, you might learn about linking a dynamic library or using a buildsystem like [make][make]. Tearing away abstractions can sometimes yield useful insight.

But I haven't mentioned my favorite part of VS Code - container support. Thanks to the [Dev Containers][dev-containers] extension, you can even "containerize" the editor you're using! To share themes and extensions with your team, just package your local settings in a config file and push it to source control. When people launch a container from that blueprint, they'll get an identical editor on their machine. This feature is implemented using Docker so you can combine it with Dockerfiles for extremely portable project. It automates everything from package installation to forcing your team to use a bright-orange code window. Culture!

## Windows Terminal

A simple interface to manage all your terminals [from one place][windows-terminal]. Nowadays this feature comes bundled with Windows 11, but it used to be a niche add-on that I would install myself. You can launch any terminal you want from a single window, whether it's a built-in terminal like Powershell or a third-party one like Git Bash. If you're like me and prefer Unix-style commands for some tasks and Powershell for others, this is a big efficiency boost. It also works with [Windows Subsystem for Linux][wsl] so you can launch a shell for any Linux distro you've installed.

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