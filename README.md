# runai_dist_examples
Examples for runai server using distributed training (using HOROVOD and DDP)


## Horovod
### Pytorch
1. Build the docker image and push to image repository:
```
bash build_image_pytorch_hvd.sh
```
2. Submit job to runai system:
```
runai submit-mpi horovod-pytorch-test \
  --image warvito/dist-horovod:pytorch \
  --always-pull-image \
  --processes 2 \
  --gpu 1 \
  --project wds20
```
### Tensorflow 2
1. Build the docker image and push to image repository:
```
bash build_image_tf_hvd.sh
```
2. Submit job to runai system:
```
runai submit-mpi horovod-tf-test \
  --image warvito/dist-horovod:tf \
  --always-pull-image \
  --processes 2 \
  --gpu 1 \
  --project wds20
```
## DDP
1. Build the docker image:

2. Push to private repository:

3. Submit job to runai system:
