FROM ubuntu:14.04.3

RUN apt-get update && apt-get install -y \
    curl \
    gcc \
    make \
    patch

RUN curl --silent https://raw.githubusercontent.com/miyagawa/cpanminus/1.7039/cpanm | perl - App::cpanminus
RUN cpanm App::perlbrew
RUN perlbrew init

RUN perlbrew install perl-5.6.2
RUN perlbrew install perl-5.8.9
RUN perlbrew install perl-5.10.1
RUN perlbrew install perl-5.12.5
RUN perlbrew install perl-5.14.4
RUN perlbrew install perl-5.16.3
RUN perlbrew install perl-5.18.4
RUN perlbrew install perl-5.20.3
RUN perlbrew install perl-5.22.0
