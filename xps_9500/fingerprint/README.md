HOW TO: https://aboutcher.co.uk/2020/10/goodix-fingerprint-reader-on-fedora-linux/

```bash
cat libfprint-2-tod1-goodix/debian/modaliases >> /lib/modules/$(uname -r)/modules.alias
```

```
# Install default systemfprintd and libfrint
yum install fprintd fprintd-pam

# Build libfprint and libfprint-tod
git clone https://gitlab.freedesktop.org/3v1n0/libfprint.git
yum install -y gcc gcc-c++ glib glib-devel glibc glibc-devel glib2 glib2-devel libusb libusb-devel nss-devel pixman pixman-devel libX11 libX11-devel libXv libXv-devel gtk-doc libgusb libgusb-devel gobject-introspection gobject-introspection-devel ninja-build
cd libfprint
git checkout tags/v1.90.3+tod1 # NEW TAG - "v1.90.7+git20210222+tod1"?
meson builddir && cd builddir
meson compile
meson install

# Overwrite the system libfprint with our version
cp libfprint/libfprint-2.so.2.0.0 /usr/lib64/
cp libfprint/tod/libfprint-2-tod.so /usr/lib64/
cp libfprint/tod/libfprint-2-tod.so.1 /usr/lib64/

# Get the Goodix libfprint driver/udev rules
wget http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1.tar.gz
tar -xvf libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1.tar.gz

# Move the libfprint driver to where we think it should go
mkdir -p /usr/lib/libfprint-2/tod-1/
mkdir -p /usr/local/lib64/libfprint-2/tod-1/
cp libfprint-2-tod1-goodix/usr/lib/x86_64-linux-gnu/libfprint-2/tod-1/libfprint-tod-goodix-53xc-0.0.4.so /usr/lib/libfprint-2/tod-1/
ln -s /usr/lib/libfprint-2/tod-1/libfprint-tod-goodix-53xc-0.0.4.so /usr/local/lib64/libfprint-2/tod-1/libfprint-tod-goodix-53xc-0.0.4.so
sudo chmod 755 /usr/lib/libfprint-2/tod-1/libfprint-tod-goodix-53xc-0.0.4.so
cp libfprint-2-tod1-goodix/lib/udev/rules.d/60-libfprint-2-tod1-goodix.rules /lib/udev/rules.d/
mkdir -p /var/lib/fprint/goodix

# Add some things into the module alias file
cat libfprint-2-tod1-goodix/debian/modaliases >> /lib/modules/$(uname -r)/modules.alias
```


