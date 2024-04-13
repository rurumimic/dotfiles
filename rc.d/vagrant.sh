### Vagrant ###

if command -v virtualbox >/dev/null; then
	export VAGRANT_DEFAULT_PROVIDER=virtualbox
fi

vsh() {

	if [ ! -f Vagrantfile ]; then
		echo -e "\e[31mThere is no 'Vagrantfile' here.\e[0m" >&2
		return 1
	fi

	if [ ! -d .vagrant ]; then
		echo -e "\e[31mThere is no '.vagrant/' here.\e[0m" >&2
		return 1
	fi

	if [ ! -f .vagrant/ssh-config ]; then
		vagrant ssh-config >.vagrant/ssh-config
	fi

	if [ ! -f .vagrant/ssh-config ] || [ ! -s .vagrant/ssh-config ]; then
		vagrant ssh-config >.vagrant/ssh-config
	fi

	if [ ! -s .vagrant/ssh-config ]; then
		echo -e "\e[31mCould not generate '.vagrant/ssh-config'.\e[0m" >&2
		return 1
	fi

	kitty +kitten ssh -F .vagrant/ssh-config "${1:-default}"

}
