#/bin/bash

rm -fr $HOME/.kre
rm -fr $HOME/.kpm
rm -fr $HOME/.k/


rm -fr $HOME/.dnx/runtimes
rm -fr $HOME/.dnx/packages
rm -fr $HOME/.dnx/

unset KRE_FEED
unset KVM_USER_HOME

unset _KVM_ALIAS_DIR
unset _KVM_BUILDNUMBER
unset _KVM_COMMAND_NAME
unset _KVM_DEFAULT_FEED
unset _KVM_HOME_VAR_NAME
unset _KVM_RUNTIME_FOLDER_NAME
unset _KVM_RUNTIME_FRIENDLY_NAME
unset _KVM_RUNTIME_PACKAGE_NAME
unset _KVM_RUNTIME_SHORT_NAME
unset _KVM_USER_PACKAGES
unset _KVM_VERSION_MANAGER_NAME


unset DNX_FEED
unset DNX_USER_HOME

unset _DNVM_ALIAS_DIR
unset _DNVM_AUTHORS
unset _DNVM_BUILDNUMBER
unset _DNVM_COMMAND_NAME
unset _DNVM_DEFAULT_FEED
unset _DNVM_DNVM_DIR
unset _DNVM_HOME_VAR_NAME
unset _DNVM_PACKAGE_MANAGER_NAME
unset _DNVM_RUNTIME_FOLDER_NAME
unset _DNVM_RUNTIME_FRIENDLY_NAME
unset _DNVM_RUNTIME_PACKAGE_NAME
unset _DNVM_RUNTIME_SHORT_NAME
unset _DNVM_UPDATE_LOCATION
unset _DNVM_USER_PACKAGES
unset _DNVM_VERSION_MANAGER_NAME


# shell functions
unset __dnvm_download
unset __dnvm_find_latest
unset __dnvm_has
unset __dnvm_help
unset __dnvm_locate_runtime_bin_from_full_name
unset __dnvm_package_arch
unset __dnvm_package_name
unset __dnvm_package_runtime
unset __dnvm_package_version
unset __dnvm_prepend_path
unset __dnvm_requested_version_or_alias
unset __dnvm_strip_path
unset __dnvm_unpack
unset __dnvm_update_self

unset __kvm_download
unset __kvm_find_latest
unset __kvm_has
unset __kvm_locate_runtime_bin_from_full_name
unset __kvm_package_name
unset __kvm_package_runtime
unset __kvm_package_version
unset __kvm_prepend_path
unset __kvm_requested_version_or_alias
unset __kvm_strip_path
unset __kvm_unpack




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
