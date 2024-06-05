> [!NOTE]
> [This is the new README.md file, you can find the old one by clicking this link](OLD-README.md)

# GPU rendering on Steam Deck
how to get the GPU rendering option fully working on steam deck (experimental)


## Requiered packages:
`sudo pacman -Syu rocm-hip-runtime rocm-opencl-sdk rocm-hip-sdk hsa-amd-aqlprofile-bin`
* rocm-hip-runtime
* rocm-opencl-sdk
* rocm-hip-sdk
* hsa-amd-aqlprofile-bin

### Adding HIP tools to system PATH and adding user to 2 groups:
* `export PATH=/opt/rocm/hip/bin:$PATH`
* `source ~/.bashrc`
* `sudo usermod -a -G video $USER && sudo usermod -a -G render $USER`

## Download Blender from their official website (NOT FROM DISCOVERY STORE)
1. download any blender version (after 3.0) from https://www.blender.org
2. Go to your download folder, and unzip the downloaded archive to whatever directory is best for you (non root folders preferably)

## Add GPU denoising support through OIDN precompiled binaries:
1. Download Precompiled Intel Open Image Denoise Binary Packages from https://www.openimagedenoise.org/downloads.html (look for a file named oidn-<version>.x86_64.linux.tar.gz)
2. Open the download OIDN archive (OIDN = Open Image Denoise) and select the following folders:
   * bin
   * doc
   * include
   * lib
3. Drop those folders in the Blender main folder you previously extracted (where blender.desktop is located) and overwrite any files if necessary

> [!WARNING]
> I advise restarting your Steam Deck, just in case


## Enable the GPU in blender:
1. launch the blender.desktop file from the Blender folder
2. go at the top left Edit > :gear: Preferences... > System
3. under the first category "Cycles Render Devices" select the tab "HIP"
4. then:
   - [x] AMD Custom GPU 0405
   - [ ] AMD Custom APU 0405
5. to be clear, you need to enable the Custom GPU and disable the Custom APU
> [!CAUTION]
> If both devices are checked, blender WILL crash when starting a render
6. Just in case, at the bottom left of the settings window, click on the Burger menu (three stacked horizontal lines), then click on "Save Preferences"
7. Close the settings window, and go back into the default blender Window to change the render device from EEvEE to Cycles
8. Then, 2 options bellow, change "Device" from "CPU" to "GPU Compute"

# End Note:
This should be it! blender should now be able to use the GPU to render with cycles, i am currently working on making HIP-RT work, i will update this github repo as soon as i find a solution
> [!NOTE]
> Check this file for every videos and docs i used:
[GPU rendering on steam deck.txt](useless%20unformated%20files/GPU%20rendering%20on%20steam%20deck.txt)

