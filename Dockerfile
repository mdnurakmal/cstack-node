FROM node:alpine

# Update
RUN apk update upgrade;

RUN echo node -v

RUN mkdir app

# Create a group and user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Tell docker that all future commands should run as the appuser user
USER appuser