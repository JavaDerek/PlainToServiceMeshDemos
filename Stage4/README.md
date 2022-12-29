This stage picks up with Istio installed and pod injection turned on (by labeling it with "istio-injection=true" for the "istioinaction" namespace.

* Set this namespace as your default context
* Run the Stage 3 installs in order greeter replica set, greeter service, then clients
* Grafana
*   istioctl dashboard grafana http://localhost:3000
*   Dashboards (on left) > Browse > Istio > Istio Service Dashboard
* Jaeger
*   istioctl dashboard jaeger http://localhost:16686
*   Choose any service on the left other than Jaeger itself
*   Can see...
*       Client to Greeter latency
*       Processing time for Greeter
*       Greet to Client latency
*   Note: End-to-end flows require apps to propagate headers
*   Apply greeter-fail1pct-vs.yaml and see pods start to fail
*   Apply greeter-allPass-vs.yaml and see pods all stabilize

