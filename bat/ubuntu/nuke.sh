#/bin/bash

rm -fr $HOME/.k/


# login scripts
#	$HOME/.bashrc
#	LISTING
#
sed '/kvm/p' $HOME/.bashrc
grep 'kvm' $HOME/.bashrc

# login scripts
#	$HOME/.bashrc
#	CLEANUP
#
#	vi $HOME/.bashrc
#
# grep -v 'kvm' $HOME/.bashrc > filename2; mv filename2 $HOME/.bashrc
#
# sed --in-place '/kvm/d' $HOME/.bashrc
sed -i '/kvm/d' $HOME/.bashrc

cat $HOME/.bashrc