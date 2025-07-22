@Library('jenkins-shared-library')_

def configMap = [
    project: "expense",
    component: "backend"
]

if (! env.BRANCH_NAME.equalsIgnoreCase('main')) {
    nodeJSEKSPipeline(configMap)
}
else {
    echo "Please follow Production process"
}
// nodeJSEKSPipeline(configMap)
// Generally we give nodeJSEKSPipeline.call(configMap), but call is default function, so no need to call it. But you should call
// for other functions.