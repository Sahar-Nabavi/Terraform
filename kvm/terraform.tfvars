machines = [
  {
    name       = "master01"
    disk_size  = "85899345920"  # 80 GB
    pool_name  = "pool-master01"
    ip_address = "192.168.21.11"
    cpu        = 2
    memory     = 4096  # 4 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "worker01-rasha"
    disk_size  = "107374182400"  # 100 GB
    pool_name  = "pool-worker01"
    ip_address = "192.168.21.21"
    cpu        = 4
    memory     = 6144  # 6 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "worker02-rasha"
    disk_size  = "107374182400"  # 100 GB
    pool_name  = "pool-worker02"
    ip_address = "192.168.21.22"
    cpu        = 4
    memory     = 6144  # 6 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "elastic01"
    disk_size  = "107374182400"  # 100 GB
    pool_name  = "pool-elastic01"
    ip_address = "192.168.21.31"
    cpu        = 2
    memory     = 2048  # 2 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "elastic02"
    disk_size  = "107374182400"  # 100 GB
    pool_name  = "pool-elastic02"
    ip_address = "192.168.21.32"
    cpu        = 2
    memory     = 2048  # 2 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "elastic03"
    disk_size  = "107374182400"  # 100 GB
    pool_name  = "pool-elastic03"
    ip_address = "192.168.21.33"
    cpu        = 2
    memory     = 2048  # 2 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "psql01"
    disk_size  = "107374182400"  # 100 GB
    pool_name  = "pool-psql01"
    ip_address = "192.168.21.41"
    cpu        = 2
    memory     = 4096  # 4 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
#  {
#    name       = "minio01"
#    disk_size  = "107374182400"  # 100 GB
#    pool_name  = "pool-minio01"
#    ip_address = "192.168.21.51"
#    cpu        = 1
#    memory     = 2048  # 2 GB
#    network_name = "rashanet01ph"
#    gateway4    = "192.168.21.1"
#  },
#  {
#    name       = "minio02"
#    disk_size  = "107374182400"  # 100 GB
#    pool_name  = "pool-minio02"
#    ip_address = "192.168.21.52"
#    cpu        = 1
#    memory     = 2048  # 2 GB
#    network_name = "rashanet01ph"
#    gateway4    = "192.168.21.1"
#  },
#  {
#    name       = "minio03"
#    disk_size  = "107374182400"  # 100 GB
#    pool_name  = "pool-minio03"
#    ip_address = "192.168.21.53"
#    cpu        = 1
#    memory     = 2048  # 2 GB
#    network_name = "rashanet01ph"
#    gateway4    = "192.168.21.1"
#  },
#  {
#    name       = "minio04"
#    disk_size  = "107374182400"  # 100 GB
#    pool_name  = "pool-minio04"
#    ip_address = "192.168.21.54"
#    cpu        = 1
#    memory     = 2048  # 2 GB
#    network_name = "rashanet01ph"
#    gateway4    = "192.168.21.1"
#  },
#  {
#    name       = "minio05"
#    disk_size  = "107374182400"  # 100 GB
#    pool_name  = "pool-minio05"
#    ip_address = "192.168.21.55"
#    cpu        = 1
#    memory     = 2048  # 2 GB
#    network_name = "rashanet01ph"
#    gateway4    = "192.168.21.1"
#  },

  {
    name       = "kafka01"
    disk_size  = "85899345920"  # 80 GB
    pool_name  = "pool-kafka01"
    ip_address = "192.168.21.61"
    cpu        = 1
    memory     = 2048  # 2 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "kafka02"
    disk_size  = "85899345920"  # 80 GB
    pool_name  = "pool-kafka02"
    ip_address = "192.168.21.62"
    cpu        = 1
    memory     = 2048  # 2 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },
  {
    name       = "kafka03"
    disk_size  = "85899345920"  # 80 GB
    pool_name  = "pool-kafka03"
    ip_address = "192.168.21.63"
    cpu        = 1
    memory     = 2048  # 2 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },

  {
    name       = "ali-ununtu"
    disk_size  = "25899345920"  # 80 GB
    pool_name  = "pool-aliubuntu"
    ip_address = "192.168.21.98"
    cpu        = 1
    memory     = 2048  # 2 GB
    network_name = "rashanet01ph"
    gateway4    = "192.168.21.1"
  },

]

