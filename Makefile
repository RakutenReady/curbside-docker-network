.PHONY: install
install:
	./macos_config.sh

.PHONY: up
up:
	./up.sh

.PHONY: connect
connect:
	./openvpn.sh
