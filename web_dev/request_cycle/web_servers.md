# Release 1

_What are some of the key design philosophies of the Linux operating system?_
- open source
- programs are small and do one thing well
- programs work together
- programs handle text streams, which is a universal interface

_In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?_
- In my own words, a VPS is some walled off memory on a computer other than your own that you can use as a web server
- advantages include the following
    + more easily created and configured than a dedicated physical server
    + cost less than an equivalent physical server
    + easily scalable as you can just increase your hosting plan
    + complete root access to your environment

_Why is it considered a bad idea to run programs as the root user on a Linux system?_
- more prone to mistakes or software bugs
    + a buggy program or script could delete critical files or even everything on the system
- a vulnerability or malicious software can do much more damage because it has full root permissions
- you can be victim of your own mistakes
    + accidentally running rm -rf * would not be stopped by lack of permissions if ran as root
- running as root is not necessary for most uses
