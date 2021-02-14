FROM debian:buster

RUN apt-get -y update && apt-get install -y wget gnupg2 && \
	echo "deb http://rpms.litespeedtech.com/debian/ buster main" > /etc/apt/sources.list.d/openlitespeed.list && \
	wget -O- http://rpms.litespeedtech.com/debian/lst_repo.gpg | apt-key add && \
	apt-get -y update && \
	apt-get install -y openlitespeed && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

