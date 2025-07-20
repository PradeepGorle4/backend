@library('jenkins-shared-library')_

def configMap {
    project: "expense",
    component: "backend"
}

nodeJSEKSPipeline(configMap)
// Generally we give nodeJSEKSPipeline.call(configMap), but call is default function, so no need to call it. But you should call
// for other functions.