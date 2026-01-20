# Novell Netware SMP console screensaver for X11, Gnome, KDE Plasma, and Wayland Desktops

## RPM and DEB Package Downloads
### **RPM Based Packages (RedHat, CentOS, Fedora, SuSe, Alma, Rocky)**
- [xscreensaver-6.14-0.src.rpm](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-6.14-0.src.rpm) RPM Source 
- [xscreensaver-6.14-0.x86_64.rpm](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-6.14-0.x86_64.rpm) RPM Binary
- [xscreensaver-debuginfo-6.14-0.x86_64.rpm](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-debuginfo-6.14-0.x86_64.rpm) RPM Debug Info
- [xscreensaver-debugsource-6.14-0.x86_64.rpm](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-debugsource-6.14-0.x86_64.rpm) RPM Debug Source

### **Debian Based Packages (Debian, Ubuntu)**
- [xscreensaver-6.14-0.sdeb](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-6.14-0.sdeb) Debian Source
- [xscreensaver_6.14-0_amd64.deb](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver_6.14-0_amd64.deb) Debian Binary

## Table of Contents <!-- omit in toc -->
- [Description](#description)
- [Quick Start Guide](#quick-start-guide)
- [Help! "dnf update -y" overwrites and downgrades my xscreensaver version](#Help-dnf-update-overwrites-and-downgrades-my-xscreensaver-version)
- [Configuring XScreensaver and Obtaining Older Versions](#configuring-xscreensaver-and-obtaining-older-versions)
- [Netware SMP Screensaver Options](#netwaresmp-options)
- [Command Line Options](#command-line-options)
- [Building the Screensaver from Source](#building-the-screensaver-from-source)
- [Building the Screensaver as an RPM Package (Redhat/CentOS/SuSe)](#building-as-an-rpm-package)
- [Building the Screensaver as a Debian Package (Debian/Ubuntu)](#building-as-a-debian-package)    
- [Copyright](#copyright)
- [Authors](#authors)
- [Issues / Problems / Help](#issues--problems--help)

## Description

The _netwaresmp_ screensaver written by Jeffrey Merkey &lt;jeffmerkey@gmail.com&gt; and Cosimo Streppone &lt;cosimo@cpan.org&gt;, based on PopSquares, Deco hacks, loadsnake, and Novell's Netware SMP.  The original Netware SMP screensaver was written by Jeffrey Merkey at Novell in 1994.  This version is a rewrite of the original which functions exactly the same way as it did in Netware SMP.  Each worm represents a running system cpu processor.  As system utilization increases for each cpu, the corresponding worm for that processor gets longer and moves more quicky across the screen.  As overall system load increases, all the worms slightly increase in speed.  This screensaver is very useful for monitoring cpu loading in a system since you can visually see processor utilization and loading by simply observing the worms. 

## Quick Start Guide

You can download precompiled Red Hat Package Manager (RPM) and Debian (DEB) packages which contain the entire XScreensaver 
program with netwaresmp integrated from the [release page](https://github.com/jeffmerkey/netware-xscreensaver/releases) for 
this project, or you can build the program from the git sources.  The current netwaresmp xscreensaver module is compiled 
against the XScreensaver v6.14-0 base and you may have to deinstall any older version of the Xscreensaver program you are 
running and then reinstall with the RPM or DEB packages listed in the releases section.  

Most Linux distributions use an outdated xscreensaver program which lacks current bug fixes and new capabilities.    
It's a good idea to upgrade to the xscreensaver 6.14 release since there have been many bug fixes and enhanced features in 
the most current maintained version of XScreensaver. 

If you want to build the program from scratch with the git sources rather than use the pre-compiled RPMS and DEB packages, then please skip to the section [Building the Screensaver from Source](#building-the-screensaver-from-source) for instructions on how to do this. 
 
Packages are provided in binary and source versions, and can be downloaded and installed directly or rebuilt for a different 
target architecture such as ARM64. Package types are Red Hat Package Manager (RPM) packages and Debian (DEB) packages for 
binary installation and Source RPM packages (SRPMS) and Debbuild SDEB packages for source code installation.  

RPM and DEB packages for each release include a binary architecture specific package
and a source package which can be downloaded and built/rebuilt and which contains the source code.

For example, the release v6.14-0 contains the following packages in the release section:

### **RPM Based Packages (RedHat, CentOS, SuSe)**

- [xscreensaver-6.14-0.src.rpm](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-6.14-0.src.rpm)
- [xscreensaver-6.14-0.x86_64.rpm](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-6.14-0.x86_64.rpm)

### **Debian Based Packages (Debian, Ubuntu)**

- [xscreensaver-6.14-0.sdeb](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver-6.14-0.sdeb)
- [xscreensaver_6.14-0_amd64.deb](https://github.com/jeffmerkey/netware-xscreensaver/releases/download/v6.14-0/xscreensaver_6.14-0_amd64.deb)

### **Removing a Previous Installation of Outdated Versions of XScreensaver**

Most of the XScreensaver packages shipped or distributed by RedHat, Debian, and many Distros of Linux are quite old
and outdated and do not contain current bug fixes or support and should be upgraded in any event.  

To remove a previously installed or outdated version of XScreensaver with the RPM package manager:
```sh
rpm -e xscreensaver
```

To remove a previously installed or outdated version of XScreensaver and all package dependencies with the dnf or yum RPM package 
manager for RPM based Linux Distributions:
```sh
dnf remove xscreensaver
```

To remove a previously installed or outdated version of XScreensaver with the DEB package manager for Debian based Linux 
distributions:
```sh
dpkg -r xscreensaver
```

To remove a previously installed or outdated version of XScreensaver and all package dependencies with the apt DEB package 
manager for Debian based Linux Distributions:
```sh
apt autoremove xscreensaver
```
or
```sh
apt-get autoremove xscreensaver
```

### **Installing Binary Packages**

To install the binary package with the RPM package manager:
```sh
rpm -i xscreensaver-6.14-0.x86_64.rpm
```

To deinstall the RPM binary package:
```sh
rpm -e xscreensaver
```

To install the binary package with the Debian dpkg package manager for amd64:
```sh
dpkg -i xscreensaver_6.14-0_amd64.deb
```

To deinstall the Debian dpkg binary package:
```sh
dpkg -r xscreensaver
```

### **Installing Source Packages**

To install the source package with the RPM package manager:
```sh
rpm -i xscreensaver-6.14-0.src.rpm
```

*(Note: rpm installs the source code files in /root/rpmbuild/ as top directory for RedHat and CentOS
platforms.  SuSe platforms install the source code files in /usr/src/packages/)*

To install the source package with the Debbuild package tool:
```sh
debbuild -i xscreensaver-6.14-0.sdeb
```
*(Note: Debbuild installs the source code files in /root/debbuild/ as top directory)*

For building or rebuilding RPMS or DEB Packages after you have installed the associated source packages on your platform, refer to the following:

- [Building the Screensaver as an RPM Package (Redhat/CentOS/SuSe)](#building-as-an-rpm-package)
- [Building the Screensaver as a Debian Package (Debian/Ubuntu)](#building-as-a-debian-package)

## **dnf update overwrites and downgrades my xscreensaver version**

Red Hat uses an epoch designator (num:package version) in the rpm filename for it's versions of 
xscreensaver, i.e. "xscreensaver-1:5.45" where "1:" is an override epoch number which will override
later versions of the software.  Red Hat does this to force overwrite of later installs of the 
xscreensaver program.  By way of example, if you install xscreensaver-6.14 on your system, when
dnf runs an update, it will downgrade the xscreensaver to v5.45 since it contains an epoch number
in the filename.  Renaming your file and inserting your own higher epoch (i.e. 2:package version) 
may not always work in all instances, and the use of epoch numbers is a bad practice to promote.

The better method is to tell dnf not to upgrade the xscreensaver program at all, and to skip 
automated upgrades (or downgrades as the case may be), requiring that you explicitly upgrade
or downgrade the xscreensaver program yourself.  dnf provides a simple method to enable this
capability.  Open a command line interface on linux, and use the vim text editor:

```sh
vim /etc/dnf/dnf.conf
``` 

you should see something similiar to the following:

```sh
[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=True
skip_if_unavailable=False
exclude= c-icap* squid 
fastestmirror=true
```
The "exclude" entry in this file lists programs that dnf will skip from automated updates.
Add "xscreensaver" to this list.  The list accepts wildcard values.  By way of example, 
this exclude setting states that any "c-icap\*" or "squid" program will be skipped by dnf.

Edit this file and add the "xscreensaver" package name to be excluded.  Your file should
look like this after you add this entry:

```sh
[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=True
skip_if_unavailable=False
exclude= c-icap* squid xscreensaver
fastestmirror=true
``` 

Save your changes (:w) and when you run dnf, it will ignore updates of xscreensaver from 
Red Hat's old, outdated xscreensaver versions.  

## **Configuring XScreensaver and Obtaining Older Versions**

For detailed instructions on how to install and configure the XScreensaver base program, please refer to the online 
[Documentation and Manuals for XScreensaver](https://www.jwz.org/xscreensaver/man1.html).  You should also review 
the [Frequently Asked Questions](https://www.jwz.org/xscreensaver/faq.html) for information about common integration
and installation questions and detailed information about the XScreensaver program itself.  

You can report any bugs you encounter regarding the XScreensaver program and utilities by opening a [bug report](https://www.jwz.org/xscreensaver/bugs.html) at the main XScreensaver support website at [www.jwz.org](https://www.jwz.org/xscreensaver/
).

You can download other versions of XScreensaver, including the most recent versions at the [XScreensaver Download Page](https://www.jwz.org/xscreensaver/download.html).

There are several online archives of XScreensaver releases which contain both current and older released versions of the software.  [Open Source Labs](https://ftp2.osuosl.org/pub/blfs/conglomeration/xscreensaver/) publishes a mirror of [XScreensaver versions](https://ftp2.osuosl.org/pub/blfs/conglomeration/xscreensaver/).

## **_netwaresmp_ Options**

```
netwaresmp [-cpus  number of cpus] [-speedup  divisor] [-wormsize  pixels] 
[-display host:display.screen] [-foreground color] [-background color] 
[-window] [-root] [-mono] [-shape <0-6>] [-install] [-visual visual]
```

## **Command Line Options**

_netwaresmp_ accepts the following options:

* **--cpus**  
  Number of cpus to start.  The default is the actual number of cpus detected from /proc/cpuinfo.  If you specify more cpus than are installed in your system, only the worms that are mapped to an actual processor will grow longer and faster when cpu load increases for that processor.  If you specify less cpus than are installed in your system, the program will default the display to the actual detected cpus.  
* **--speedup**  
  speedup divisor to increase worm speed.  functions as powers of 2 i.e. speedup=4 runs at 4 times the speed, etc.  Default value is 1.
* **--wormsize**  
  size of the worm head in pixels in a range between 10 and 80.  Default value is 30.  Can be any value but works best if you use multiples of 2 to map to graphics screen dimensions (which are typically numbers which are multiples of 2 or 10).
* **--window**  
  Draw on a newly-created window.  This is the default.
* **--root**  
  Draw on the root window.
* **--mono**  
  If on a color display, pretend we're on a monochrome display.
* **--shape**  
  Specify worm drawing mode:  
  0 for squares, 
  1 for circles, 
  2 for snipes (from the NetWare game "Snipes", the first distributed network game run over a local area network), 
  3 for triangles, 
  4 for classic (retro text-based screensaver from NetWare SMP), 
  5 for trees.
* **--install**  
  Install a private colormap for the window.
* **--visual _visual_**  
  Specify which visual to use.  Legal values are the name of a visual class,
  or the id number (decimal or hex) of a specific visual.

## **Environment**

* **DISPLAY**  
  to get the default host and display number.
* **XENVIRONMENT**  
  to get the name of a resource file that overrides the global resources
  stored in the RESOURCE_MANAGER property.

## **Building the Screensaver from Source**

It should be noted that since the xscreensaver-netwaresmp code base is provided as a Source RPM and DEB packages, it's very simple and straight forward to rebuild the RPM or DEB packages without needing to resort to a manual rebuild.  However, users on ARM64 systems and Debian users may need to build the program manually.  You are encouraged to use the RPM method to rebuild the code but in the event you need to do so manually, the following section describes the steps for accomplishing this. 

In order to build the xscreensaver with netwaresmp fully integrated, you should first clone the xscreensaver-6.14 repository.  This repository is a generic xscreensaver-6.14 code base with the X11 netwaresmp screensaver included as a patch series.  This approach is implemented with a patch series in this manner for two reasons.  First, it is necessary to re-run the autoreconf automake program after downloading the sources and applying the patch series in order to integrate the netwaresmp screensaver into the xscreensaver-settings configuration tool.  The build for xscreensaver-settings setup utility uses a static file to list integrated screensavers and this file is only updated by running autoreconf against the code base.  Second, this approach allows the netwaresmp patch series to be applied to previous versions of xscreensaver package prior to the 6.14 release.  

Most Linux distributions use an outdated xscreensaver program which lacks current bug fixes and new capabilities.  It should be noted that there are subtle programming differences between many of these earlier versions.  I have not fully tested the Netware SMP screensaver on all of these earlier distributions, however, in most cases the existing netwaresmp patch series should work on most of them.  If you have problems trying to apply the patch series to an xscreensaver release, please feel free to post an Issue to [Issues](#issues--problems--help) and I will look into it and get back to you and provide an updated patch for that xscreensaver distribution.  It's actually a lot better if you just choose to upgrade to the xscreensaver 6.14 release since there have been many bug fixes and enhanced features in the newer code base.  It's also a lot less complicated since the newer release is a single RPM for the entire xscreensaver distribution, instead of xscreensaver being provided as dozens of packages for each xscreensaver distro such as RedHat provides, which is difficult for end users to a manage and navigate. 

### Installing the xscreensaver Code Base

You can clone the xscreensaver code base from github as follows using
the 'git clone' command, or you can download the xscreensaver-6.14-0.tar.gz
archive directly from github, then untar and extract the files.

#### Cloning from Github
  
```sh
git clone https://github.com/xscreensaver/xscreensaver
```

After running the 'git clone' command, you should see something similiar to:

```sh
Cloning into xscreensaver ...
remote: Enumerating objects: 2199, done.
remote: Counting objects: 100% (2199/2199), done.
remote: Compressing objects: 100% (1366.1466), done.
remote: Total 2199 (delta 796), reused 2192 (delta 789), pack-reused 0
Receiving objects: 100% (2199/2199), 18.37 MiB | 30.94 MiB/s, done.
Resolving deltas: 100% (796/796), done.
```

#### Downloading 

You can also download the xscreensaver-6.14-0.tar.gz archive directly
from github from the releases section for the xscreensaver-6.14 code base:

- [xscreensaver-6.14.tar.gz](https://github.com/xscreensaver/xscreensaver/archive/refs/tags/v6.14.tar.gz) 

After you download the code base, untar the package into a directory:

```sh
tar -xf xscreensaver-6.14.tar.gz 
```

The tar program should extract the files into the following directory.  Use ls -ld 
to list the directory and archive to verify it was untarred correctly:

```sh
[root@localhost Downloads]# ls -ld xscreensaver-\*
drwxrwxr-x. 9 root    root        4096 Feb 18 22:25 xscreensaver-6.14
-rw-rw-r--. 1 jmerkey jmerkey 20024886 Feb 20 20:56 xscreensaver-6.14.tar.gz
```

#### Applying the patch and running autoreconf

After you have either git cloned the code base or downloaded and installed the code 
base manually, you must apply the patch series then run autoreconf. Change directory into the code base directory and apply the patch.  

If you cloned the repository:

```sh
[root@localhost]# cd xscreensaver
[root@localhost xscreensaver]# 
```

If you have downloaded and untarred the repository with the tar -xf command manually:

```sh
[root@localhost]# cd xscreensaver-6.14
[root@localhost xscreensaver-6.14]# 
```
The patch is named patch/netwaresmp-xscreensaver-6.14.patch.  You should see a file listing similiar 
to the following in the base source code directory:
```sh
[root@localhost xscreensaver]# ll
total 1396
-rw-r--r--. 1 root root 137286 Feb 20 20:33 aclocal.m4
drwxr-xr-x. 4 root root    175 Feb 20 20:33 android
-rw-r--r--. 1 root root  22566 Feb 20 20:33 ax_pthread.m4
-rwxr-xr-x. 1 root root  49035 Feb 20 20:33 config.guess
-rw-r--r--. 1 root root  11315 Feb 20 20:33 config.h.in
-rwxr-xr-x. 1 root root  18574 Feb 20 20:33 config.rpath
-rwxr-xr-x. 1 root root  34212 Feb 20 20:33 config.sub
-rwxr-xr-x. 1 root root 689143 Feb 20 20:33 configure
-rw-r--r--. 1 root root 159261 Feb 20 20:33 configure.ac
-rw-r--r--. 1 root root   1554 Feb 20 20:33 COPYING
drwxr-xr-x. 2 root root   4096 Feb 20 20:33 driver
drwxr-xr-x. 6 root root  12288 Feb 20 20:33 hacks
-rw-r--r--. 1 root root   8527 Feb 20 20:33 INSTALL
-rwxr-xr-x. 1 root root  15358 Feb 20 20:33 install-sh
-rw-r--r--. 1 root root   7269 Feb 20 20:33 intltool-extract.in
-rw-r--r--. 1 root root  13658 Feb 20 20:33 intltool-merge.in
-rwxr-xr-x. 1 root root  15635 Feb 20 20:33 intltool-update.in
drwxr-xr-x. 2 root root   4096 Feb 20 20:33 jwxyz
-rw-r--r--. 1 root root  15344 Feb 20 20:33 Makefile.in
drwxr-xr-x. 9 root root   4096 Feb 20 20:33 OSX
drwxr-xr-x. 2 root root   4096 Feb 20 20:33 patch
drwxr-xr-x. 2 root root   4096 Feb 20 20:33 po
-rw-r--r--. 1 root root  82109 Feb 20 20:33 README
-rw-r--r--. 1 root root  11156 Feb 20 20:33 README.hacking
-rw-r--r--. 1 root root   8694 Feb 20 20:33 README.md
drwxr-xr-x. 3 root root   4096 Feb 20 20:33 utils
-rw-r--r--. 1 root root   3426 Feb 20 20:33 xscreensaver.spec
[root@localhost xscreensaver]# 
```

Apply the patch with the following command:
```sh
[root@localhost xscreensaver]# patch -p1 < patch/netwaresmp-xscreensaver-6.14.patch 
```
The patching process should produce the following output:

```sh
[root@localhost xscreensaver]# patch -p1 < patch/netwaresmp-xscreensaver-6.14.patch
patching file driver/XScreenSaver.ad.in
patching file hacks/config/netwaresmp.xml
patching file hacks/Makefile.in
patching file hacks/netwaresmp.c
patching file hacks/netwaresmp.man
patching file xscreensaver.spec
[root@localhost xscreensaver]#
```

If you see a printout indicating the patch was successfully applied, then you can now run autoreconf program and start the build.   You can apply this patch in a similiar manner to most of the xscreensaver code bases prior to 6.14 and it will work on most of the distros.  If you run into trouble, post an Issues report on github at [Issues / Problems / Help](#issues--problems--help)
.

Now run autoreconf to re-create the Makefiles and Configuration scripts:

```sh
[root@localhost xscreensaver]# autoreconf -f -v 
```

You should see the followning output if autoreconf completed successfully:

```sh
autoreconf: Entering directory `.
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --force 
autoreconf: configure.ac: tracing
autoreconf: configure.ac: AM_GNU_GETTEXT is used, but not AM_GNU_GETTEXT_VERSION
autoreconf: configure.ac: not using Libtool
autoreconf: running: /usr/bin/autoconf --force
autoreconf: running: /usr/bin/autoheader --force
autoreconf: configure.ac: not using Automake
autoreconf: Leaving directory `.
[root@localhost xscreensaver]# 
```
Now type 'configure' and then type 'make' to build the  xscreensaver-6.14 package.  If the make process succeeds, then perform 'make install' to install the xscreensaver package to your system:

```sh
[root@localhost xscreensaver]# ./configure; 
```

Check to make certain the ./configure script completes with no errors.   If there were no 
errors the ./configure program returns a final listing of created Makefiles and updated includes
at the very end of the configure script similiar to the following:

```sh
current directory: /work/xscreensaver
command line was: ./configure
...
... <snip>
...
configure: creating ./config.status
config.status: creating Makefile
config.status: creating utils/Makefile
config.status: creating jwxyz/Makefile
config.status: creating hacks/Makefile
config.status: creating hacks/fonts/Makefile
config.status: creating hacks/images/Makefile
config.status: creating hacks/glx/Makefile
config.status: creating po/Makefile.in
config.status: creating driver/Makefile
config.status: creating driver/xscreensaver.pam
config.status: creating driver/XScreenSaver.ad
config.status: creating config.h
config.status: config.h is unchanged
config.status: executing po-directories commands
config.status: creating po/POTFILES
config.status: creating po/Makefile
config.status: executing po/stamp-it commands

   #################################################################

    XScreenSaver will be installed in these directories:

             User programs: /usr/local/bin/ (DIFFERS)
             Screen savers: /usr/local/libexec/xscreensaver/ (DIFFERS)
             Configuration: /usr/local/share/xscreensaver/config/ (DIFFERS)
             Extra Fonts:   /usr/local/share/fonts/xscreensaver/ (DIFFERS)
             App Defaults:  /usr/share/X11/app-defaults/
```

Now type make from the base directory to make and compile the xscreensaver-netwaresmp 
package.  

```sh
[root@localhost xscreensaver]# make
```
If make succeeds without any errors, you can install the newly built packages on your 
system with 'make install'.

```sh
[root@localhost xscreensaver]# make install
```

## **Building as an RPM Package**

In order to build the screensaver as an RPM, the program must be compressed into a tar.gz
file and the tar.gz file named to match the versioning information contained in the 
associated .spec file.  

Spec files are special files which contain instructions on how to build a particular package
from a source code archive.  On Red Hat and CentOS systems, RPMS are built in the /root/rpmbuild/
 top directory.  SuSe systems build RPMS in the /usr/src/packages/ as top directory.  These 
"top directories" will contain BUILD, BUILDROOT, SPECS, RPMS, SRPMS, and SOURCES subdirectories.  

The SPECS directory contains the \*.spec files used to build RPMS and SRPMS packages.  The SOURCES subdirectory will contain the soure code archive file referred to in the \*.spec file used to build the 
RPM package.

See the [Quick Start Guide](#quick-start-guide) on instructions for installing the 
source rpm which installs both the .spec file and source archive file (tar.gz) into 
the rpm build top directory (i.e. /root/rpmbuild/).  You should have previously 
installed the src.rpm file before attempting to build the rpm.  You can also 
manually install the .spec file into the \<top directory\>/SPECS/ directory and 
the source code tarball in the \<top directory\/SOURCES/ directory, then attempt 
to build the rpm package.

To build the XScreensaver using the rpm tool, change directories (cd) into the /root/rpmbuild/SPECS/ directory (/usr/src/packages/SPECS/ for SuSe) and enter the following command:

```sh
rpmbuild -ba xscreensaver-6.14.spec <enter>
```

## **Building as a Debian Package**

In order to build the screensaver as a Debian package, the program must be compressed into a tar.gz
file and the tar.gz file named to match the versioning information contained in the associated .spec file. Spec files are special files which contain instructions on how to build a particular package from a source code archive.  

Debian Packages can be built using a utility called "debbuild" and use a top directory structure which is similar to that used by the RPM tool but using /root/debbuild/ as the "top directory".  These "top directories" will contain BUILD, BUILDROOT, SPECS, DEBS, SDEBS, and SOURCES subdirectories and follows a similar layout that is used for RPM files.  

The SPECS directory contains the \*.spec files used to build DEB and SDEB packages.  The SOURCES subdirectory will contain the soure code archive file referred to in the \*.spec file used to build the 
DEB and SDEB packages.

See the [Quick Start Guide](#quick-start-guide) on instructions for installing the 
source SDEB which installs both the .spec file and source archive file (tar.gz) into 
the debbuild top directory (i.e. /root/debbuild/).  You should have previously installed 
the SDEB file before attempting to build the DEB package.  You can also manually 
install the .spec file into the \<top directory\>/SPECS/ directory and the source 
code tarball in the \<top directory\/SOURCES/ directory, then attempt to build the 
DEB package.

To build the XScreensaver using debbuild, change directories (cd) into the /root/debbuild/SPECS/ directory and enter the following command:
```sh
debbuild -vv -ba xscreensaver-6.14.spec <enter>
```
## **Copyright**

Copyright © 1994-2024 by Jamie Zawinski, Jeffrey Merkey, Cosimo Streppone, 
and others.  Permission to use, copy, modify, distribute, and sell this software
and its documentation for any purpose is hereby granted without fee, provided 
that the above copyright notice appear in all copies and that both that 
copyright notice and this permission notice appear in supporting documentation. 
No representations are made about the suitability of this software for any 
purpose.  It is provided "as is" without express or implied warranty.

## **Authors**

Jeffrey Merkey &lt;[jeffmerkey@gmail.com](mailto:jeffmerkey@gmail.com)&gt;, Cosimo Streppone &lt;[cosimo@cpan.org](mailto:cosimo@cpan.org)&gt; and Jamie Zawinski &lt;[jwz@jwz.org](mailto:jwz@jwz.org)&gt; based on PopSquares, Deco hacks, loadsnake, and Novell's Netware SMP.  The original Netware SMP screensaver was written by Jeffrey Merkey at Novell in 1994.  

## **Issues / problems / help**

If you have any issues, please log them at <https://github.com/jeffmerkey/netware-xscreensaver/issues>

If you have any suggestions for improvements then pull requests are
welcomed, or raise an issue.

