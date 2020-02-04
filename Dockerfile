FROM docker:stable

# Install Kubectl
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.17.2/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl
RUN chmod a+x /usr/local/bin/kubectl
RUN cd /home \
	&& wget https://storage.googleapis.com/kubernetes-helm/helm-v2.2.3-linux-amd64.tar.gz -O helm.tar.gz \
	&& tar -xvf helm.tar.gz \
	&& rm helm.tar.gz \
	&& mv linux-amd64/helm /usr/local/bin/helm \
	&& chmod +x /usr/local/bin/helm \
	&& cd
