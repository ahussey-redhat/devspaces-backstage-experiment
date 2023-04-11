# devspaces-backstage-experiment

1) Start by generating backstage skeleton

```
echo backstage | npx @backstage/create-app
```

2) If the above command fails initially, it might be because `.npmrc` file is missing from the `backstage` folder and the default `.npmrc` file stored in user home folder is used. Solve this by executing:


```
cp .npmrc backstage/
```

3) Install the backstage again:


```
cd backstage && yarn install
```
