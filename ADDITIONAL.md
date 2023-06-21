This project is fork from https://github.com/pocl/pocl/

# Following is added/modified to make full installation possible for non-technical know-how.

A. git and clang-xx into part of dependencies packages.
B. added sudo when root access is needed for installation.
C. copy pocl.icd to appropriate folder for pocl to run.

# Script
A script is written to falicitate and expidite the whole POCL installtion in both Focal Fossa and Jammmy Jellyfish.
## To install on 20.04 Focal Fossa
Getting the script, will install into folder POCL in root folder.
```bash
cd ~
wget https://raw.githubusercontent.com/gyferlim/pocl/main/give-me-pocl.sh
```
Since LLVM 12 is avaliable at time of running for Ubuntu 20.04, we will use it for compiling pocl.
```bash
export LLVM_VERSION=12
```
To avoid system prompt for password while runnig the script, perform apt update using root access.
```bash
sudo apt update
```
Alter script permission
```bash
chmod +x give-me-pocl.sh
```
You should be good to go. Run the script.
*Always check the downloaded script for any malicious code before you run it.
```bash
./give-me-pocl.sh
```

You can check the script here :  [give-me-pocl.sh](./give-me-pocl.sh)

## For Jammy Jellfish 22.04
Since LLVM 14 is available, will use version 14 in Jammy Jellyfish
```bash
export LLVM_VERSION=12
```
Rest of the steps are the same.

# Tested Platform
Code are tested in following platforms:
- Windows 11 with WSL2 Ubuntu 22.4 LTS Jammy , Intel i7-8650U & Intel UHD 620 Graphics
- Windows 10 with WSL2 Ubuntu 20.4LTS Focal Fossa, Intel i7-4770 & AMD RX580 8GB.
- Linux 20.04 LTS Focal Fossa with 4th Haswell i3 , Nvidia Quadro P4000 on PCIE x16 & Nvidia GTX 1660 Super on PCIE x1 with riser card.

This was first posted on Hashcat Forum ( https://hashcat.net/forum/thread-11410-post-58457.htm )
