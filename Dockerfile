# Start from the official Golang image as a build stage
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY main.go ./
RUN go build -o fullcycle main.go

# Use a minimal image for the final stage
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/fullcycle .
CMD ["./fullcycle"]
