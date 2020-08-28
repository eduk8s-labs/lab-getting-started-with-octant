For this workshop Octant has been deployed as a container into the workshop environment running in your Kubernetes cluster. Normally you would deploy Octant to your own local desktop machine and access your Kubernetes cluster from there.

In this workshop environment, because of the constraints imposed, you will not be able to exercise all features of Octant. Specifically, you will only be able to access resources in the Kubernetes namespace associated with your workshop session. You will not be able to view cluster level resources, or switch to other namespaces.

To view the Octant web interface, click on the **Console** tab in the workshop dashboard. You should find that Octant is already connected to the Kubernetes cluster and it is displaying an overview for the `{{session_namespace}}` namespace.

The set of resources you see in the overview are the default resources created with the namespace, as well as some additional resources required to support the workshop environment.

So that we have a real application to work with and investigate, first run in the terminal the command:

```execute
kubectl apply -f database
```

Did you type the command in yourself? If you did, click on the command block instead and you will find that it is executed for you. The workshop uses these action blocks for various purposes. Anytime you see such a block with an icon on the right hand side, you can click on it and it will perform the listed action for you.

When run, this command will deploy a PostrgreSQL database. To monitor the deployment of the database, run:

```execute
kubectl rollout status deployment/blog-db
```

When the deployment of the database has completed, run:

```execute
kubectl apply -f frontend
```

This will deploy a blog application, with it being connected up to the database for storage.

To monitor the deployment of the blog, run:

```execute
kubectl rollout status deployment/blog
```

Now that we have deployed some workloads, let's explore Octant. Jump back to the Octant web interface by clicking on the **Console** tab in the workshop dashboard.
