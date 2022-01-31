FROM balenalib/aarch64-debian:bullseye-build
RUN apt-get update && install_packages git build-essential wget -y --no-install-recommends
WORKDIR /home/pi/
RUN git clone https://github.com/analogdev/sx1302_hal.git
WORKDIR /home/pi/sx1302_hal
RUN make clean all
RUN make install
RUN make install_conf
WORKDIR /home/pi/sx1302_hal/bin
COPY restart.sh .
COPY start.sh .
RUN chmod +x restart.sh start.sh
RUN sed -i -e "s/localhost/helium-miner/g" global_conf.json.sx1250.US915
ENTRYPOINT ["./start.sh"]
