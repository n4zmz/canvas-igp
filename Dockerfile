FROM python:3.9-buster
LABEL maintainer="Dennis Boylan <n4zmz.tivo@gmail.com>"

# Update
RUN apt-get update

# create abc user so root isn't used
RUN \
	groupmod -g 1000 users && \
	useradd -u 911 -U -d /config -s /bin/false abc && \
	usermod -G users abc && \
# create some files / folders
	mkdir -p /config /css /images /js /logs

# add local files
COPY css/ /css
COPY index.html /
COPY images/ /images
COPY js/ /js

CMD [ "python", "-m", "http.server" ]
EXPOSE 8000