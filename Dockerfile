FROM node:0.12-wheezy

MAINTAINER Christian Lövsund <chris@lovsund.se>

# devtools
RUN apt-get update && apt-get install --no-install-recommends -y -q automake python-dev python-pkg-resources

# watchman
COPY install_watchman.sh /root/
RUN chmod +x /root/install_watchman.sh
RUN /root/install_watchman.sh

# nuclide
COPY install_nuclide.sh /root/
RUN chmod +x /root/install_nuclide.sh
RUN /root/install_nuclide.sh
RUN ls -la /root/

EXPOSE 9090

VOLUME ["/work"]

#ENTRYPOINT ["/root/nuclide/pkg/nuclide/server/nuclide-start-server -p 9090 -w /work && tail -f /root/nuclide.nohup.out"]
