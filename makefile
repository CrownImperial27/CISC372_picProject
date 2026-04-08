image: image.c image.h
	gcc -g image.c -o image -lm

pthreads: imagePthreads.c image.h
	gcc -g imagePthreads.c -o image_pthreads -lpthread -lm

openmp: imageOpenMP.c image.h
    gcc -g imageOpenMP.c -o image_openmp -fopenmp -lm

clean:
	rm -f image image_pthreads image_openmp output.png