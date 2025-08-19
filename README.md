# Full Cycle Challenge: Docker + Go

This project is a simple Go application that prints:

```
Full Cycle Rocks!!
```

## How to Build and Run with Docker

1. **Build the Docker image:**
   ```sh
   docker build -t raulbunicenha/fullcycle-challenge-docker-go:latest .
   ```

2. **Run the Docker container:**
   ```sh
   docker run --rm raulbunicenha/fullcycle-challenge-docker-go:latest
   ```
   Output:
   ```
   Full Cycle Rocks!!
   ```

## Docker Hub

You can also pull the image directly from Docker Hub:

```sh
docker pull raulbunicenha/fullcycle-challenge-docker-go:latest
docker run --rm raulbunicenha/fullcycle-challenge-docker-go:latest
```

---

Made for the Full Cycle course challenge.
