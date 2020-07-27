export http_proxy=\"http://squid.$(dnsdomainname):3128
export https_proxy=\"http://squid.$(dnsdomainname):3128
export ftp_proxy=\"http://squid.$(dnsdomainname):3128
export no_proxy=169.254.169.254,metadata,metadata.google.internal