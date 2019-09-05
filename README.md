# Health Check Migration Kit

This migration kit allows to upgrade an existing AEM 6.4/6.5 version to Felix Health Checks and also includes some additional packages for special use cases:

* `hc-migration-felix-healthcheck-package`: Will install Felix HC bundles and re-configure the AEM UI at /libs/granite/operations/content/healthreports/healthreportlist.html
* `hc-migration-legacy-systemready-endpoints-package`: Will provide the endpoints /systemready and /systemalive in case you already have a k8s setup relying on those endpoints
* `hc-migration-better-startup-handling-package`: Replaces the AEM ootb startup filter with the Apache Felix ServiceUnavailableFilter
* `hc-migration-better-deployment-handling-package`: Configures AEM to return reliably 503 during deployments

HINT: The packages contain official Sling/Felix bundles and configurations only to upgrade an existing AEM instance (the target environment being AEM is the reason why these packages do not reside at Apache). 

Provided as part of the talk at adaptTo() 2019: 
[https://adapt.to/2019/en/schedule/felix-health-checks.html](https://adapt.to/2019/en/schedule/felix-health-checks.html). The  `tools` folder contains a simple HA proxy setup for testing and a trivial shell script to monitor response codes of a server.
