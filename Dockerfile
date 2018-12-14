###############################################################################
# Step 1 : Builder image

FROM node:10 as builder
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN npm install --only=production
RUN npm rebuild node-sass
RUN npm run build

###############################################################################
# Step 2 : Production environment Run image

FROM node:10-alpine
ENV NODE_ENV=production
WORKDIR /home/node/app

# Install dependencies for production only
COPY ./package* ./
RUN npm install --only=production
RUN npm cache clean --force

# Install the server
RUN npm install -g serve

# Copy builded source from the upper builder stage
COPY --from=builder /usr/src/app/build ./build

# Start the app
CMD serve -l 4000 -s ./build
