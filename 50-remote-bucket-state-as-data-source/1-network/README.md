### Error1: 

Failed to get existing workspaces: querying Cloud Storage failed: storage: bucket doesn't exist

### Error 1 Solution 

1. The Terraform state bucket must be created in advance. Verify it from the GCP Console or simply list all the buckets located in a specific project from the CLI:

```bash
gcloud alpha storage ls --project=<some_project_name>
```

2. If the bucket is there, make sure you are authenticated against the correct project.

```bash
gcloud auth application-default login --project <some_project_name>
```
3. Last but not least, run:

```bash
terraform init -reconfigure
```