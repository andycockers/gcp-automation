FROM golang:rc-alpine
ENV TFENV_ARCH=arm
ENV TGENV_ARCH=arm64
ENV PKENV_ARCH=arm
RUN apk update && \ 
	apk add --no-cache \ 
		ca-certificates=20191127-r5 \ 
		git \
		curl \
		bash \
		gcc \
		&& \
	git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
	echo 'PATH=${HOME}/.tfenv/bin:${PATH}' >> ~/.bashrc && \
    git clone https://github.com/cunymatthieu/tgenv.git && \
    git clone https://github.com/iamhsa/pkenv.git && \
	
	rm -rf /var/cache/apk/*

#ENV PATH=/tfenv/bin:/go/tgenv/bin:/go/pkenv/bin:$PATH

WORKDIR /root

ENTRYPOINT [ "/bin/bash" ]
