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

4) Start the backstage:

```
yarn start
```

THIS STEP FAILS NOW: 5) Access the local backstage instance:

```
oc get route | grep 3000
```
Open the URL above in the browser using `http://` schema prefix. 
