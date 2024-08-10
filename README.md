![Main banner](https://i.imgur.com/gVE5Qt0.png)

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
3. Core stuff (you will see what i mean, well, i hope you do):
   * [Pacman](https://pacman.archlinux.page) | the default package manager for arch linux/SteamOS
   * [Blender.org](https://www.blender.org) | the official blender wesbsite to get the "raw" realeases (it's probably not an actual word used for that kind of thing, but eh ((raw realease as in every files you need in a .zip, not from a package manager)) )
   * [AMD - HIP](https://rocm.docs.amd.com/projects/HIP/en/latest/index.html) | AMD files to basically help blender use your GPU
   * GPU ≠ APU | A GPU is for graphics processing only, while an APU combines a CPU and GPU on one chip for both processing and graphics.

# Why another readme.md?
Why not? :monocle_face: No but more seriously, the clearer those things are, the better, tweaking your os is NOT RECOMMENDED (i had to return my deck to the factory because i messed up a liiiiittle bit too much :grimacing:
and also because of [@Digitalist](https://www.youtube.com/@3Digitalist), he recently posted this [video](https://www.youtube.com/watch?v=gAvdmQE1Gbo) which kinda helped me get back to work (thanks a lot, really 	:heart:)

# A **BIG** warning:
DO NOT, I REPEAT, DO **NOT** IN ANY CASE UPDATE/CHANGE THE [MESA](https://github.com/ValveSoftware/steamos_mesa) PACKAGE, IF YOU DO:

1. Your Steam Deck won't boot up anymore and will probably get stuck to the logo (sucks to be your steam deck with a modified mesa package)
2. To (maybe) fix this issue, press ••• + Power ON, then select the second option (Something like SteamOS-B), Go into the settings (steamOS ones) `settings > system > check for updates` and start praying that you have one pending (believer or not, trust me), if you do, press update, the deck restarts, and everything should be fixed, if you don't... RIP i guess

# What's currently happening with this repo:
I have honestly no idea, i'm still searching, every day, because it used to work for me, but life isn't fun if things just work (like i said on the first section of this repo), and now guess what, it's not working! So yeah, i'm actively searching, documenting, breaking my deck~ huuu, i mean... tweaking my deck? :flushed:
I do need help, so if you have ANY info, you got 2 options (or more if you are a stalker):
- [Discord](https://discord.com) - add me, my username is `splatchoot` (i'm sorry if i reply in a mean way at first, but there's a LOT of scams on discord, pretty annoying)
- the "discussions" section on github on this repo

# Final note:

Thanks to anyone who helps, and thanks to 
- [@Digitalist)[https://www.youtube.com/@3Digitalist]
- **d[⇀_↼]b** (someone on discord who i consider a friend and who helped me through getting stuff to work
- Valve, for giving me a challenge (and not an easy one too :joy:)
- My own dedication (if you can't thank yourself, there's not many chances you can get happy in life)
