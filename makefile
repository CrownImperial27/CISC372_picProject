CC = gcc
CFLAGS = -g -std=gnu99 -Wall

# OpenMP needs special flag
OMPFLAGS = -fopenmp

# pthread flag
PTHREADFLAGS = -lpthread

# ---------- SERIAL ----------
image: image.c image.h
	$(CC) $(CFLAGS) image.c -o image -lm

# ---------- PTHREADS ----------
pthreads: imagePthreads.c image.h
	$(CC) $(CFLAGS) imagePthreads.c -o image_pthreads $(PTHREADFLAGS) -lm

# ---------- OPENMP ----------
openmp: imageOpenMP.c image.h
	$(CC) $(CFLAGS) imageOpenMP.c -o image_openmp $(OMPFLAGS) -lm

# ---------- CLEAN ----------
clean:
	rm -f image image_pthreads image_openmp output.png