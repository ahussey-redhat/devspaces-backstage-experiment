# devspaces-backstage-experiment

1) Start by generating backstage skeleton

```
echo backstage | npx @backstage/create-app
```

2) The above command will fail initially, because `.npmrc` file is missing from the `backstage` folder. Solve this by executing:


```
cp .npmrc backstage/
```

3) Install the backstage again:


```
cd backstage && yarn install
```
