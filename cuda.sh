dnf install http://developer.download.nvidia.com/compute/cuda/repos/fedora27/x86_64/cuda-repo-fedora27-9.2.148-1.x86_64.rpm
dnf clean all
dnf install cuda

wget https://files.pythonhosted.org/packages/58/33/cced4891eddd1a3ac561ff99081019fddc7838a07cace272c941e3c2f915/pycuda-2018.1.1.tar.gz
tar xfz pycuda-2018.1.1.tar.gz
cd pycuda-VERSION
su -c "python distribute_setup.py"
su -c "easy_install numpy"

python test_driver.py
