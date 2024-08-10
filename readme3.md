![Main banner](https://i.imgur.com/oL2NrkY.jpeg)

# Quick recap (you can skip ahead if you aren't interested):

So, a certain time ago, i ordered my steam deck, and wow i was happy. Then, after buying a few games, my passion for 3D arts and modelling quickly caught up to my love for games.
I started doing scenes, and renders, but as most people reading this, i was stuck to using the CPU, which in itself isn't something to spit on, it can run great games,
but agains't that beast called blender, that poor CPU didn't stand a chance. I am a highly determined and stubborn person, there is no way i'm stopping to:

> "No compatible GPUs found for Cycles

> Requires AMD GPU with Vega or RDNA architecture

> and AMD driver 22.10 or newer"

so i did like anyone else would do, i fired up my trustworthy browser, went on [duckduckgo](https://www.duckduckgo.com), and started looking for workarounds and answers.
you can find most of the stuff i found on [this file](useless%20unformated%20files/GPU%20rendering%20on%20steam%20deck.txt). but i never got my answer from 1 single source,
(wouldn't be fun if everything you needed was as easy as reading 1 doc now would it?).

after combining my reaserches, i came up with the following:

# Arguments, packages, and what they mean/are:

1. Packages:
   * [rocm-hip-runtime](https://archlinux.org/packages/extra/any/rocm-hip-runtime/) | Packages to run HIP applications on the AMD platform
   * [rocm-opencl-sdk](https://archlinux.org/packages/extra/any/rocm-opencl-sdk/) | Develop OpenCL-based applications for AMD platforms
   * [rocm-hip-sdk](https://archlinux.org/packages/extra/any/rocm-hip-sdk/) | Develop applications using HIP and libraries for AMD platforms
   * [hsa-amd-aqlprofile-bin](https://archlinux.org/packages/extra/x86_64/hsa-amd-aqlprofile-bin/) | AQLPROFILE library for AMD HSA runtime API extension support
2. Arguments (a way to tell a program certain condition before launching itself):
   * `export PATH=/opt/rocm/hip/bin:$PATH` | The $PATH is an environment variable in Unix-like operating systems that specifies the directories where   executable programs are located. When you type a command in the terminal, the system searches these directories in the order they are listed in $PATH to find and execute the corresponding program.
   * `source ~/.bashrc` | The source ~/.bashrc command reloads your .bashrc file, applying any changes to your terminal session immediately (including adding stuff to $PATH).
   * `sudo usermod -a -G video $USER && sudo usermod -a -G render $USER` | The command adds your current user to the video and render groups, granting access to video and rendering resources (basically, allows blender to use stuff that are specific to certain groups ((i think)) )
   * `HSA_OVERRIDE_GFX_VERSION=10.3.0 ./blender` | The command HSA_OVERRIDE_GFX_VERSION=10.3.0 ./blender sets an environment variable to override the detected GPU version, forcing Blender to use version 10.3.0 for compatibility (i don't really have a shorter explanation, sorry lazy readers).

