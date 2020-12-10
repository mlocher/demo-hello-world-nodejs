# To build the docker container run:
# docker build --tag odp_demo:latest .
#
# To run the newly built docker image
# docker run --rm -p 8000:8000 -it --name odp_demo odp_demo_nodejs:latest

FROM node:10.15-alpine
WORKDIR /root/

COPY package.json .

RUN npm install

COPY . . 
RUN chmod +x index.js

CMD ["npm", "start"]

EXPOSE 8000
