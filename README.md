# Health Check Migration Kit

This migration kit allows to upgrade an existing AEM 6.4/6.5 version to Felix Health Checks and also includes some additional packages for special use cases:

* `hc-migration-felix-healthcheck-package`: Will install Felix HC bundles and re-configure the AEM UI at /libs/granite/operations/content/healthreports/healthreportlist.html
* `hc-migration-legacy-systemready-endpoints-package`: Will provide the endpoints /systemready and /systemalive in case you already have a k8s setup relying on those endpoints
* `hc-migration-better-startup-handling-package`: Replaces the AEM ootb startup filter with the Apache Felix ServiceUnavailableFilter
* `hc-migration-better-deployment-handling-package`: Configures AEM to return reliably 503 during deployments

Provided as part of the talk at adaptTo() 2019: 
[https://adapt.to/2019/en/schedule/felix-health-checks.html](https://adapt.to/2019/en/schedule/felix-health-checks.html)