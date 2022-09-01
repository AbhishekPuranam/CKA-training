### Setup
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statement

- Question1: Create a deployment ```crow``` in ``` birds ``` namespace. Ensure the  pod of deployment ``` crow ``` is deployed in ``` node4```

- Question2: label the node  ``` node4 ``` as ``` bird=india ```. Create a deployment ``` peacock ``` in ``` birds ``` namespace. Ensure pods of deployment ``` peacock ``` is deployed in ``` node4 ``` . 