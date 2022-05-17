FROM node:17
WORKDIR /app

# ENV HOST 0.0.0.0
# ENV PORT 8080

COPY ./gender_nouns_gui /app
# RUN apk add python make g++
RUN apt-get install g++ build-essential
RUN npm install

CMD ["npm", "run", "build"]
