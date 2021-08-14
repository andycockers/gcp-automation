FROM golang:rc-alpine
ENV TFENV_ARCH=arm
ENV TGENV_ARCH=arm64
ENV PKENV_ARCH=arm
RUN apk update && \ 
	apk add --no-cache \ 
		ca-certificates=20191127-r5 \ 
		bash \
		git \
		curl \
		&& \
	git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
	echo 'PATH=${HOME}/.tfenv/bin:${PATH}' >> ~/.bashrc && \
    git clone https://github.com/cunymatthieu/tgenv.git ~/.tgenv && \
	echo 'PATH=${HOME}/.tgenv/bin:${PATH}' >> ~/.bashrc && \
    git clone https://github.com/iamhsa/pkenv.git ~/.pkenv && \
	echo 'PATH=${HOME}/.pkenv/bin:${PATH}' >> ~/.bashrc && \
	
	rm -rf /var/cache/apk/*

WORKDIR /root

ENTRYPOINT [ "/bin/bash" ]
