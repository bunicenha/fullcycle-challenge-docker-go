# Start from the official Golang image as a build stage
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY main.go ./
# Build with flags for smaller binary size
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o fullcycle main.go

# Use scratch (empty) as the final base image
FROM scratch
COPY --from=builder /app/fullcycle /
CMD ["/fullcycle"]
