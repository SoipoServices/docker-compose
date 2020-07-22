FROM docker:latest

# Install dependencies
RUN apk add docker-compose && apk add rsync && apk add openssh-client
RUN eval $(ssh-agent -s)
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN [[ -f /.dockerenv ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config