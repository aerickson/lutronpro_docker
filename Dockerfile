FROM node
EXPOSE 5000
USER node

# expected environment variables
ENV SMARTBRIDGE_IP '192.168.0.40'
ENV SMARTTHINGS_IP '192.168.0.41'
ENV LUTRON_USER 'user@user.com'
ENV LUTRON_PASS 'funny_password'

# install npm stuff in non-root dir
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
# - optionally if you want to run npm global bin without specifying path
#ENV PATH=$PATH:/home/node/.npm-global/bin

WORKDIR /home/node
RUN npm install lutronpro
RUN git clone https://github.com/aerickson/lutronpro.git
WORKDIR /home/node/lutronpro

CMD node runNodeServer.js

