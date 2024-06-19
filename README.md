# unitycatalog-docker
UnityCatalog OSS docker image


# Operate on Delta tables with the CLI
Let's list the tables.

```bash
docker exec -it unitycatalog bash 
```
You should see a few tables. Some details are truncated because of the nested nature of the data. To see all the content, you can add --output jsonPretty to any command.

>NOTE: Just remember you can execute without entering in the container with `docker exec -it unitycatalog uc table list --catalog unity --schema default --output jsonPretty`

Next, let's get the metadata of one of those tables.

```bash
uc table get --full_name unity.default.numbers --output jsonPretty
```

You can see that it is a Delta table. Now, specifically for Delta tables, this CLI can print snippet of the contents of a Delta table (powered by the Delta Kernel Java project). Let's try that.

```bash
uc table read --full_name unity.default.numbers
```