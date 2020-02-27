The primary view in Octant is the **Overview** page. This provides a view of all namespaced resource in a selected namespace.

![Resources Overview](octant-resources-overview.png)

In our case you can see the resources for the blog application and database you just deployed.

If you want to work with a different namespace, you can use the drop down list in the top navigation bar of Octant. In this workshop environment, although you can see a list of other namespaces, if you change to another namespace, you will not be able to view any of the namespaced resources of the namespaces as role based access control (RBAC) for this workshop environment doesn't permit you access. So stick with the ``%session_namespace%`` namespace.

From the overview, you can click on the names of specific resources under each category shown. This allows you to drill down to more details of that specific resource.

Click on ``blog`` under the **Deployments** category, or click on this [blog deployment](%console_url%/#/overview/namespace/%session_namespace%/workloads/deployments/blog) link.
