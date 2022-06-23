install:
	echo "Setting up kind"
	kind create cluster --name webFocus \
		--config kind-cluster.yml
lb:
	echo "Setting up kind with metallb"
	metallb/metallb.sh
delete:
	echo "Removing kind Cluster"
	kind delete cluster --name aws101
all: install lb
