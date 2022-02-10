FROM perl:latest

RUN apt-get update && apt-get upgrade -y \
    && apt-get autoclean \
	&& apt-get autoremove \
    && cpan Date::Manip File::Slurp JSON HTTP::Request HTTP::Response LWP LWP::UserAgent LWP::Protocol::https Term::ReadKey URI XML::LibXML XML::Parser 2.34 XML::TreePP XML::Twig 3.28 XML::Writer 0.6.0 \
    && cd ~ \
    && wget https://github.com/XMLTV/xmltv/archive/refs/tags/v1.1.0.tar.gz \
    && tar xvf v1.1.0.tar.gz \
    && rm v1.1.0.tar.gz \
    && cd xmltv-1.1.0 \
    && perl Makefile.PL \
    && make \
    && make test \
    && make install