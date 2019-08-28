var pauseInstallationNodePath = '/system/sling/installer/jcr/pauseInstallation'
var resource = resourceResolver.getResource(pauseInstallationNodePath)
var childrenIt = resource.listChildren()
var hasChildren = false

while(childrenIt.hasNext()) {
    var child = childrenIt.next()
    log.temporarilyUnavailable("Pause Installation Node: "+child.getPath())
    hasChildren = true
}

if(!hasChildren) {
    log.info("No children exist in "+pauseInstallationNodePath)
} else { 
    log.info("Children exist in "+pauseInstallationNodePath)
}