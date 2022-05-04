FROM debian:bullseye-slim

RUN \
	# Install dependencies
	apt-get update && apt-get install -y fuse curl ca-certificates \

	&& curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb \
    && apt install ./keybase_amd64.deb -y \

	# Create group, user
	&& groupadd -g 1000 keybase \
	&& useradd --create-home -g keybase -u 1000 keybase \

	# Cleanup
	&& rm -r /var/lib/apt/lists/* \
	&& rm keybase_amd64.deb

USER keybase
WORKDIR /home/keybase
CMD ["bash"]

RUN run_keybase