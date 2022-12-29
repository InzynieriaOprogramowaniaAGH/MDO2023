FROM fedora

RUN dnf -y install git meson openssl1* ncurses* utf8proc* glib2* gcc-c++ perl-Ex*
RUN git clone https://github.com/irssi/irssi.git
WORKDIR /irssi/
RUN meson Build
RUN ninja -C Build
