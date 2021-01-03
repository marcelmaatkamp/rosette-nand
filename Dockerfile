ARG DEBIAN_FRONTEND=noninteractive
FROM racket/racket:7.9-full
RUN \
 raco pkg install -i --skip-installed --auto \
  racklog \
  rosette \
  slideshow-lib \
  z3 \
  stomp

WORKDIR /application
VOLUME /application
ENTRYPOINT ["racket"]

# RUN \
#  git clone https://github.com/Z3Prover/z3.git &&\
#  cd z3; python scripts/mk_make.py &&\
#  cd z3/build; make; make install &&\
#  rm -r z3 &&\
#  ln -s /usr/bin/z3 bin/ 
# RUN git clone https://github.com/HoTT/HoTT.git && \
#     cd HoTT && \
#     etc/install_coq.sh && \
#     ./autogen.sh && \
#     ./configure COQBIN="`pwd`/coq-HoTT/bin" && \
#     make -j `nproc` && \
#     make install
# 
# RUN curl -O https://coq.inria.fr/distrib/V8.5pl1/files/coq-8.5pl1.tar.gz && \
#     tar -xvf coq-8.5pl1.tar.gz && \
#     cd coq-8.5pl1; ./configure \
#                        -bindir /usr/local/bin \
#                        -libdir /usr/local/lib/coq \
#                        -configdir /etc/xdg/coq \
#                        -datadir /usr/local/share/coq \
#                        -mandir /usr/local/share/man \
#                        -docdir /usr/local/share/doc/coq \
#                        -emacs /usr/local/share/emacs/site-lisp \
#                        -coqdocdir /usr/local/share/texmf/tex/latex/misc && \
#                      make -j `nproc` && \ 
#                      make install
# 
# RUN apt-get update && \
#     apt-get install -y haskell-platform
# 
# ADD hott /hott
# RUN make -C /hott
