FROM dosarrest/gentoo-sdc-stage3-amd64

MAINTAINER DOSarrest IT Team

# This one should be present by running the build.sh script
ADD install.sh /

RUN sed -e 's/^#UsePrivilegeSeparation sandbox/UsePrivilegeSeparation yes/g' -i /etc/ssh/sshd_config

RUN /install.sh
