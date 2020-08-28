FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
### Linode CLI
RUN pip install linode-cli
### kubectl
# VERSION = $(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
RUN sudo curl -o /usr/local/bin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl \
    && sudo chmod +x /usr/local/bin/kubectl
