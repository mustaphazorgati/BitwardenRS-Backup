FROM rclone/rclone:1.54.0

LABEL "repository"="https://github.com/ttionya/BitwardenRS-Backup" \
  "homepage"="https://github.com/ttionya/BitwardenRS-Backup" \
  "maintainer"="ttionya <git@ttionya.com>"

COPY scripts/*.sh /app/

RUN chmod +x /app/*.sh \
  && apk add --no-cache bash sqlite zip heirloom-mailx tzdata p7zip

ENTRYPOINT ["/app/entrypoint.sh"]
