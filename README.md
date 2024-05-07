# GPU-rendering-on-Steam-Deck
how to get the GPU rendering option fully working on steam deck (experimental)

# ***THIS IS EXPERIMENTAL, I AM NOT RESPONSIBLE IF YOUR STEAM DECK BECOMES A SOLAR OVEN AND BLOWS UP***

### First of all, those are the packages you (probably) need:
Shortened version:
```
sudo pacman -Syu rocm-hip-runtime libamdhip rocm-opencl-sdk rocm-hip-sdk hsa-amd-aqlprofile-bin HIP-toolkit amdgpu-install
```

Full version:

```
sudo pacman -S rocm-hip-runtime
sudo pacman -S rocm-opencl-sdk
sudo pacman -S rocm-hip-sdk
sudo pacman -S hsa-amd-aqlprofile-bin
```

and then:
```reboot```

### Secondly, you will need to download whatever version of blender ***THROUGH THE OFFICIAL WEBSITE*** not through the discovery store:
[Blender's official website](https://www.blender.org)


# Next step, launch Blender with a custom launch option:

1. unzip the blender.zip you downlaoded from the official website, and place it anywhere you like
2. open the blender folder you just unzipped
3. right click on an empty space on Dolphin (file manager) and click on "***Open Terminal Here***"
4. then, run the following command:
```HSA_OVERRIDE_GFX_VERSION=10.3.0 ./blender```

# Once this is done:
blender should launch, go to the settings, then system, select "***HIP***", and enable:
* AMD Custom GPU 0405 ✅
* AMD Custom APU 0405 ✅


from the list under the cycles render device option, then just go into your scene and select GPU rendering instead of CPU rendering







> [!NOTE]
> Check this file for every videos and docs i used:
[References, Documents, Forums and videos i used to figure this out](useless%20unformated%20files/GPU%20rendering%20on%20steam%20deck.txt)
