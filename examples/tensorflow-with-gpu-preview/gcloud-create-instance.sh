NAME=$1
shift
gcloud compute instances create $NAME \
--custom-memory=78GB  \
--custom-cpu=12  \
--boot-disk-auto-delete  \
--boot-disk-size=200GB  \
--image=projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20191211  \
--boot-disk-type=pd-standard  \
--maintenance-policy=TERMINATE  \
--scopes=bigquery,storage-ro,storage-rw  \
--metadata=startup-script-url=https://raw.githubusercontent.com/tkilias/data-science-examples/high-ram-udfs/examples/tensorflow-with-gpu-preview/gcloud-setup.sh $*
