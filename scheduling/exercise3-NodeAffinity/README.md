### Setup
```sh
run : kubectl apply -f setup.yaml
```

- Question1: label node3 as ```insect=flying``` . Create a deployment ``` ant ``` in ``` insects ``` namespace. Ensure the pods of deployment ``` ant ``` are required to be deployed  in node3 or evicted by using NodeAffinity.

- Question2: label node4 as ```insect=crawl``` . Create a deployment ``` worm ``` in ``` insects ``` namespace. Pods of deployment ``` worm ``` are preffered on node3 using NodeAffinity.
