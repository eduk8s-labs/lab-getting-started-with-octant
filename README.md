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

To load the workshop definition run:

```
kubectl apply -k github.com/eduk8s-labs/lab-octant-testing
```

To deploy a sample training portal which hosts the workshop, run:

```
kubectl apply -f https://raw.githubusercontent.com/eduk8s-labs/lab-octant-testing/master/resources/training-portal.yaml
```

Then run:

```
kubectl get trainingportal/lab-octant-testing
```

This will output the URL to access the web portal for the training environment.

You need to be a cluster admin to create the deployment using this method.

Deletion
--------

To delete the training portal deployment, run:

```
kubectl delete -f https://raw.githubusercontent.com/eduk8s-labs/lab-octant-testing/master/resources/training-portal.yaml
```

When you are finished with the workshop definition, you can delete it by running:

```
kubectl delete -k github.com/eduk8s-labs/lab-octant-testing
```
