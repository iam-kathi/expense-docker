FROM node:20.19.5-alpine3.22
EXPOSE 8080
ENV DB_HOST="mysql"    
RUN addgroup -S expense && adduser -S expense -G expense
RUN mkdir /opt/server.
RUN chown -R expense:expense /opt/server
WORKDIR /opt/server
COPY package.json .           
COPY *.js .                   
RUN npm install     
USER expense         
CMD ["node", "index.js"]



# FROM node:20 AS builder
# WORKDIR /opt/server
# COPY package.json .
# COPY *.js .
# RUN npm install


# FROM node:20.18.0-alpine3.20
# EXPOSE 8080
# ENV DB_HOST="mysql"
# RUN addgroup -S expense && adduser -S expense -G expense && \
#     mkdir /opt/server && \
#     chown -R expense:expense /opt/server
# WORKDIR /opt/server
# COPY --from=builder /opt/server /opt/server
# USER expense
# CMD ["node", "index.js"]




# Before best practices implemented
# FROM node:20
# EXPOSE 8080
# ENV DB_HOST="mysql"    
# RUN mkdir /opt/server
# WORKDIR /opt/server
# COPY package.json .           
# COPY *.js .                   
# RUN npm install              
# CMD ["node", "index.js"]

# "mysql" --> this is important, as backend should be connected to mysql
# package.json --> this is backend code we downloaded and extracted
# *.js --> this is backend code we downloaded and extracted with ".js" as extension and
# we don't do schema as we did it in mysql itself is enough

