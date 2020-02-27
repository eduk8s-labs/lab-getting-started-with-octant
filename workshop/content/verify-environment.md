For this workshop Octant has been deployed as a container into the workshop environment running in your Kubernetes cluster. Normally you would deploy Octant to your own local desktop machine and access your Kubernetes cluster from there.

In this workshop environment, because of the constraints imposed, you will not be able to exercise all features of Octant. Specifically, you will only be able to access resources in the Kubernetes namespace associated with your workshop session. You will not be able to view cluster level resources, or switch to other namespaces.

To view the Octant web interface, click on the "Console" tab in the workshop dashboard. Alternatively, click on this [console](%console_url%) link. You should find that Octant is already connected to the Kubernetes cluster and it is displaying an overview for the ``%session_namespace%`` namespace.

The set of resources you see in the overview are the default resources created with the namespace, as well as some additional resources required to support the workshop environment.

Note that because the web interface for Octant has only just started up, it may take a few moments to synchronize as it queries all the different resource types the cluster supports.

So that we have a real application to work with and investigate, first run in the terminal the command:

```execute
kubectl apply -f database
```

This will deploy a PostrgreSQL database.

Did you type the command in yourself? If you did, click on the command instead and you will find that it is executed for you. You can click on any command which has the <span class="fas fa-running"></span> icon shown to the right of it, and it will be copied to the interactive terminal and run. If you would rather make a copy of the command so you can paste it to another window, hold down the shift key when you click on the command.

To monitor the deployment of the database, run:

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
