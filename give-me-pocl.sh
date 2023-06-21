echo "remove previous old POCL ICD if installed. If not installed, just ignore the error."
sudo apt remove pocl-opencl-icd

echo "Install neccessary dependencies and packages. LLVM should be set to version 12 before running this script. Print out to confirm."
echo "Your LLVM version to be install :"  $LLVM_VERSION

echo "Getting ready to install necessary dependencies packages."
echo "Pausing for 5 seconds.  Press Ctrl-C now to exit if you change your mind"
sleep 5

sudo apt-get install -y python3-dev libpython3-dev build-essential ocl-icd-libopencl1 \
    cmake git pkg-config libclang-${LLVM_VERSION}-dev clang \
    llvm-${LLVM_VERSION} make ninja-build ocl-icd-libopencl1 ocl-icd-dev \
    ocl-icd-opencl-dev libhwloc-dev zlib1g zlib1g-dev clinfo dialog apt-utils \
    libxml2-dev libclang-cpp${LLVM_VERSION}-dev libclang-cpp${LLVM_VERSION} \
    llvm-${LLVM_VERSION}-dev \
    clang-${LLVM_VERSION} git

echo "Installation completed. Cloning POCL next. Pause for 5 seconds. Folder POCL will install on root director. Ctrl-C now if you wish to exit"
sleep 5
cd ~
git clone https://github.com/pocl/pocl/

echo "Clone completed. Getting ready to build and compile. Pause for 5 seconds. Ctrl-C now if you have regreted."
cd ~/pocl
mkdir build && cd build
cmake ..
make
sudo make install
sudo ln -s /usr/local/etc/OpenCL/vendors/pocl.icd /etc/OpenCL/vendors/pocl.icd

echo "POCL installed completed"
echo "Opps... I forgot to mentioned no more pause. Earlier was the last one. You should Ctrl-C when you had your chance."
echo "A symbolic link is created in /etc/OpenCL/vendors for pocl to appear in clinfo.  The original pocl.icd is at /usr/local/etc/OpenCL/vendors/pocl.icd"
echo " Type > clinfo , and enter to see your hardwork. That's all and bye"
