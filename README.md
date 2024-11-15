# Podman Wiki.js

For AlmaLimux you need to Relabel the DATA directory

	sudo chcon -Rt svirt_sandbox_file_t $(pwd)/DATA
