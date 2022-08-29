ARG OS_IMAGE

FROM ${OS_IMAGE}

RUN \
  for x in dnf apt-get; \
  do \
    if command -v $x; \
    then \
      $x -y update; \
      $x -y install bash rclone; \
    fi; \
  done

RUN mkdir -p /root/.config/rclone
COPY rclone.conf /root/.config/rclone/rclone.conf
CMD rclone listremotes
