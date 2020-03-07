LAB - Octant Testing
====================

This workshop provides an introduction to Octant and a play area for testing it.

Prerequisites
-------------

In order to use the workshop you should have the eduk8s operator installed.

For installation instructions for the eduk8s operator see:

* https://github.com/eduk8s/eduk8s-operator

Deployment
----------

To deploy the workshop environment run:

```
kubectl apply -k github.com/eduk8s-labs/lab-octant-testing
```

Then run:

```
kubectl get trainingportal/lab-octant-testing
```

This will output the URL to access the web portal for the training environment.

You need to be a cluster admin to create the deployment using this method.

Deletion
--------

When you are finished with the workshop environment, you can delete it by running:

```
kubectl delete -k github.com/eduk8s-labs/lab-octant-testing
```
