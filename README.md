ansible-awx-setup
=================

Setup ansible awx on vagrant

Requires vagrant (http://vagrantup.com), virtualbox (http://virtualbox.org), and the awx-setup package (http://ansibleworks.com/download).

Put the awx-setup tarball in the repository, then run `vagrant up`. When all is said and done, you should be able to hit a working awx instance at http://192.168.33.20

This gives you a good way to try out awx without installing all the necessary dependencies on your box directly.

Refer to ansible docs at http://www.ansibleworks.com/releases/awx/docs/awx_user_guide.pdf for more information on using awx.
