# docker buildx build --platform linux/amd64,linux/arm64 --progress=plain --push -t calmmopey/xmltv .

FROM perl:latest

RUN apt-get update && apt-get upgrade -y \
    #&& apt-get install nano -y \
    #&& apt-get autoclean \
	#&& apt-get autoremove \
    #&& cpan App::cpanminus Date::Manip File::Slurp JSON HTTP::Request HTTP::Response LWP LWP::UserAgent LWP::Protocol::https Term::ReadKey URI XML::LibXML XML::Parser 2.34 XML::TreePP XML::Twig 3.28 XML::Writer 0.6.0 DateTime HTML::TreeBuilder HTTP::Cache::Transparent Archive::Zip CGI Compress::Zlib Date::Format DateTime HTML::Entities 1.27 HTML::Tree HTML::TreeBuilder HTTP::Cache::Transparent 1.0 HTTP::Cookies IO::Scalar Time::Piece Time::Seconds URI::Escape \
    #&& cd ~ \
    #&& wget https://github.com/XMLTV/xmltv/archive/refs/tags/v1.1.0.tar.gz \
    #&& tar xvf v1.1.0.tar.gz \
    #&& rm v1.1.0.tar.gz \
    #&& cd xmltv-1.1.0 \
    #&& perl Makefile.PL -y\
    #&& make \
    #&& make test \
    #&& make install \
    && cd ~ \
    #&& rm -rf xmltv-1.1.0 \
    && mkdir -p /root/.xmltv/cache

COPY tv_grab_uk_tvguide.conf /root/.xmltv