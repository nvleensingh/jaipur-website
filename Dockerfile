# Stage 1: Prepare website files
FROM alpine AS builder

WORKDIR /website

COPY . .

# Stage 2: Run website using Nginx
FROM nginx:alpine

COPY --from=builder /website /usr/share/nginx/html/

EXPOSE 80