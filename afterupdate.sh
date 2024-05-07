sudo steamos-readonly disable
sudo pacman -S rocm-hip-runtime
sudo usermod -a -G video $USER && sudo usermod -a -G render $USER
sudo pacman -S rocm-opencl-sdk
sudo pacman -S rocm-hip-sdk
sudo pacman -S hsa-amd-aqlprofile-bin
