install:
	echo "Setting up kind"
	kind create cluster --name webfocus \
		--config kind-cluster.yaml
lb:
	echo "Setting up kind with metallb"
	metallb/metallb.sh
delete:
	echo "Removing kind Cluster"
	kind delete cluster --name aws101
all: install lb
