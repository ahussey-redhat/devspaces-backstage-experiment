# devspaces-backstage-experiment

1) Start by generating backstage skeleton

```
echo backstage | npx @backstage/create-app
```

2) If the above command fails initially, it might be because `.npmrc` file is missing from the `backstage` folder and the default `.npmrc` file stored in user home folder is used. Solve this by executing:


```
cp .npmrc .yarnrc backstage/
```

3) Install the backstage again:


```
cd backstage && yarn install
```

4) Fix the `backend.listen.host` in `app-config.yaml` and set it to value `0.0.0.0`

5) Start the backstage:

```
yarn start
```

5A) The browser will now open the backstage instance at `http://localhost:3000`

5B) Access the local backstage instance using OpenShift Route - THIS STEP FAILS NOW!

```
oc get route | grep 3000
```
Open the URL above in the browser using `http://` schema prefix; It fails with `Application is not available` even though `curl localhost:3000` works
