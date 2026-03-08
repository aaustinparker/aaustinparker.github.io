---
title: "Tools of the Trade"
categories:
  - Development
tags:
  - tools
  - webdev
toc: true
toc_sticky: true
toc_label: "Tools"
toc_icon: "wrench"
---

Everyone has their favorite coding tools. Mine are fairly mainstream, so rather than explaining what they do, I'll just mention how they fit into my workflow. They're convenient and highly recommended.

## Docker

[Docker][docker] lets me code on the go. I enjoy working in public spaces where I won't succumb to lazy urges - parks and libraries are my go-to locations. Still, sometimes I prefer staying at home with my two giant monitors. Without Docker I'd be wasting time setting up each environment - compilers, dependencies, etc. 

By recording the setup in a [Dockerfile][dockerfile], I can sync my computers in a matter of minutes. I might install packages with `apt-get`, clone projects from Github, or create system variables. Docker will replay those exact steps anywhere, regardless of the underlying architecture or operating system. Once I push my Dockerfile to source control, other people can use it too. They just need Docker installed.

While you *can* build containers from scratch, you often start from a *base image* published on Dockerhub. I've used these to learn languages like Rust and Golang. They configure the container ahead of time so you can start coding right away. Excellent time-saver.

As a neat freak, I also like how Docker keeps my workspace clean. Dependencies for each project are living in containers isolated from the underlying filesystem. Once I'm done with a project, I just delete the container and move on. No need to track down and uninstall everything. Huge plus!

## VS Code

[VS Code][vs-code] synergizes with the "self-contained" nature of Docker. Every project is a blank canvas where you handpick the features you need. Just browse their extensions library to find everything from Typescript linters to AI assistants. These aren't installed by default so the editor stays laser-focused on whatever task you're working on. While "opinionated" IDEs have their perks, they also clutter the UI with features you don't need. They can be resource-hungry as well, even for smaller projects. VS Code has a much smaller footprint.  

 Docker and VS Code also synergize on a more practical level. Thanks to the [Dev Containers][dev-containers] extension, you can open VS Code *inside* a Docker container. Customize the editor however you want - install extensions, change settings, even override the background color. You store these preferences in a JSON file that lives in source control. When someone builds your image, they get an identical version of VS Code in their container. I like this for context-switching between desktop and laptop, but it's probably even better for teams. It would speed up the onboarding process for sure.

## Windows Terminal

[Windows Terminal][windows-terminal] is a tool I use a surprising amount. It lets you launch terminals in separate tabs and switch between them easily. You can run Powershell in one tab and [WSL][wsl] in another. This is useful when one shell has an easier (or shorter) command for achieving something - no need to find it on your taskbar. I'm a sucker for small efficiency boosts that slowly add up.

## Honorable Mentions
- Postman
- Chrome Dev Tools
- Github Copilot
- Notepad++

[docker]: https://www.docker.com/
[dockerfile]: https://docs.docker.com/reference/dockerfile/
[vs-code]: https://code.visualstudio.com/
[dev-containers]: https://code.visualstudio.com/docs/devcontainers/containers
[windows-terminal]: https://learn.microsoft.com/en-us/windows/terminal/
[wsl]: https://learn.microsoft.com/en-us/windows/wsl/