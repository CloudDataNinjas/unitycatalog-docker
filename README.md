<div class="social_links">
    <a href="https://www.clouddataninjas.com"><img src="https://img.shields.io/website?down_color=red&down_message=down&label=clouddataninjas.com&up_color=46C018&url=https%3A%2F%2Fwww.clouddataninjas.com&style=for-the-badge" alt="Cloud Data Ninjas"></a>        
</div> 

<div style="display: flex; align-items: center; justify-content: center;">  
  <a href="https://www.clouddataninjas.com">
          <img src="https://raw.githubusercontent.com/enriquecatala/enriquecatala.github.io/master/img/CLOUDDATANINJAS.png" 
          alt="Cloud Data Ninjas" 
          style="min-height: 50px; max-height: 70px; min-width: 250px "/>
  </a>
</div>


# unitycatalog-docker

This project sets up a playground environment to explore and understand UnityCatalog OSS, with DuckDB included as an example of external integration. The main focus is on UnityCatalog, and DuckDB demonstrates how to interact with UnityCatalog beyond the command line.

- [unitycatalog-docker](#unitycatalog-docker)
  - [Why This Project?](#why-this-project)
    - [Hands-On Learning](#hands-on-learning)
    - [Simplified Setup](#simplified-setup)
    - [External Tool Integration Example](#external-tool-integration-example)
  - [How It Works](#how-it-works)
  - [Getting Started](#getting-started)
  - [Usage](#usage)
    - [Connecting to UnityCatalog](#connecting-to-unitycatalog)
    - [Managing Schemas](#managing-schemas)
    - [Working with Delta Tables](#working-with-delta-tables)
    - [Using DuckDB](#using-duckdb)
- [Join the Cloud Data Ninjas Community](#join-the-cloud-data-ninjas-community)


## Why This Project?

### Hands-On Learning

The playground allows users to experiment with UnityCatalog, understanding its features, capabilities, and integration potential in a controlled environment.

### Simplified Setup

By using Docker, the project encapsulates all dependencies and configurations, ensuring a consistent setup and eliminating "_it works on my machine_" issues.

### External Tool Integration Example

DuckDB is included to show how UnityCatalog can be used with external tools, illustrating practical use cases beyond the UnityCatalog command line.

## How It Works

1. **UnityCatalog**: The Dockerfile clones the UnityCatalog OSS repository, builds the project, and runs the server.
2. **DuckDB**: The Dockerfile sets up DuckDB CLI and Python package, serving as an example of external tool integration with UnityCatalog.

## Getting Started

1. Clone this repository.
2. Navigate to the project directory.
3. Run `docker compose up --build`.

This will set up the UnityCatalog and DuckDB services, exposing the necessary ports and creating a shared network for communication.

## Usage

### Connecting to UnityCatalog

```bash
# Connect to the UnityCatalog container
docker exec -it unitycatalog bash

# List catalogs
uc catalog list

# Create a catalog
uc catalog create --name my_catalog --comment "test catalog"
```

### Managing Schemas

```bash
# List schemas
uc schema list --catalog my_catalog

# Create a schema
uc schema create --name my_schema --catalog my_catalog --comment "test schema"
```

### Working with Delta Tables

```bash
# List tables
uc table list --catalog unity --schema default --output jsonPretty

# Get table metadata
uc table get --full_name unity.default.numbers --output jsonPretty

# Read from a Delta table
uc table read --full_name unity.default.numbers

# Create a Delta table
uc table create --full_name my_catalog.my_schema.my_table2 --columns "id INT, name STRING" --storage_location "/app/etc/data/external/my_catalog/tables/"
```

### Using DuckDB

```bash
# Connect to the DuckDB container
docker exec -it duckdb bash

# Run DuckDB
duckdb

# Install and load UnityCatalog plugin in DuckDB
D install uc_catalog from core_nightly;
D load uc_catalog;
D install delta;
D load delta;
```

# Join the Cloud Data Ninjas Community
[Cloud Data Ninjas](https://www.clouddataninjas.com/) is a platform offering educational content and insights for cloud and data architects to enhance professional relevance and income. Unlock the full potential of your data skills by subscribing to [Cloud Data Ninjas](https://www.clouddataninjas.com/). Gain access to **exclusive courses, expert insights**, and a supportive community dedicated to advancing your career in data architecture. Together, we can achieve greater heights in the world of data.