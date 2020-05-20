
# chart-logrotate
This repository contains 1 chart that is used to deploy logrotate to kubernetes.
- logrotate

install `logrotate` chart
```
helm repo add stakater https://stakater.github.io/stakater-charts
helm install --name logrotate stakater/logrotate
```

For customizable values, you can see https://github.com/stakater-charts/logrotate/blob/master/logrotate/values.yaml

And create a values-custom.yaml with your own values and then install by running 

```
helm install --name logrotate stakater/logrotate -f values-custom.yaml
```
