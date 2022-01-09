FROM ubuntu:22.04
# Ref. https://northshorequantum.com/archives/dockerbuild_tz_hang.html
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update \
    && apt install -y \
      # As a baseruby
      ruby \
      git \
      gcc \
      make \
      autoconf \
      gdb \
      bison
RUN git clone https://github.com/ruby/ruby.git
WORKDIR /ruby
RUN ./autogen.sh
RUN ./configure optflags="-O0"
RUN make
RUN make install
