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

Everyone has their favorite coding tools. Mine are fairly mainstream, so rather than explaining what they do, I'll just mention how they fit into my workflow. They're awesome and highly recommended.

## Docker

[Docker][docker] lets me code on the go. I'm someone who likes working in parks and libraries, getting heavy mileage out of my laptop. Still, some days I prefer coding from home with two giant monitors that look like Matrix props. Without Docker I'd be wasting time setting up each environment - compilers, dependencies, etc. 

By recording those steps in a [Dockerfile][dockerfile], I can set everything up in a matter of minutes. For example, I can install packages with `apt-get`, clone projects from Github, or create system variables. Docker will replay those exact steps anywhere, from laptops to production servers. If I push my Dockerfile to source control, other people can use it too. They don't even need the same operating system as me - just Docker.

While you *can* make Dockerfiles from scratch, you often start from a *base image* published on Dockerhub. These have been a huge help for learning languages like Rust and Golang. They give you a pre-configured sandbox for coding with any tool you can imagine. You get to start practicing right away and skip the setup.

As a neat freak, I also like how Docker keeps my workspace clean. Dependencies for each project are living in a Docker container that's isolated from the underlying system. Once I'm done with a project, I just delete the container and move on. No need to track down and uninstall everything. Huge plus!

## VS Code

[VS Code][vs-code] synergizes with the "self-contained" spirit of Docker. Every project is a blank canvas where you hand-pick the features you need. Just browse their giant extensions library to find everything from Typescript linters to HTTP runners. Not much is installed by default, so the editor stays laser-focused on whatever task you're working on. While "opinionated" IDEs have their perks, they tend to clutter the UI with features you'll never use. They also hog memory and CPU cycles doing background tasks. VS Code has a much smaller footprint.  

 Docker and VS Code also synergize on a more literal level. Thanks to the [Dev Containers][dev-containers] extension, you can open VS Code *inside* a Docker container. Customize the editor however you want - install extensions, change default settings, even set the background color. You store these preferences in a JSON file that lives in source control with your Dockerfile. When someone builds your image, they get an identical version of VS Code on their machine. I like this for context-switching between desktop and laptop, but it's probably even better in a team setting. I could see it really speeding up onboarding.

## Windows Terminal

[Windows Terminal][windows-terminal] is a simple tool that I use a surprising amount. It lets you manage multiple terminals from one place, easily switching between them. You can have Powershell open in one tab and [WSL][wsl] in another. This is great when one terminal has an easier (or shorter) command for achieving something - no need to hunt for it on your taskbar. I'm a sucker for small efficiency boosts that add up over time.

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