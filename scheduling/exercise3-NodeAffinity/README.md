### Setup
```sh
run : kubectl apply -f setup.yaml
```

- Question1: label node3 as ```insect=flying``` . Create a deployment ``` ant ``` in ``` insects ``` namespace with 2 replicas and image as ```nginx```. Ensure the pods of deployment ``` ant ``` are required to be deployed  in node3 or evicted by using NodeAffinity. If you are using killercoda then use ```node1```.

- Question2: label node4 as ```insect=crawl``` . Create a deployment ``` worm ``` in ``` insects ``` namespace with 2 replicas and image as ```nginx```. Pods of deployment ``` worm ``` are preffered on node4 using NodeAffinity. If you are using killercoda then use ```controlplane```.
