resource "digitalocean_database_cluster" "do-db" {
  name       = var.db_name
  engine     = var.db_engine_type
  version    = var.db_engine_version
  size       = var.db_size 
  region     = var.db_region
  node_count = var.db_node_count
}

resource "digitalocean_database_kafka_topic" "do-topic-1" {
  count = length(var.kafka_topic_names)
  name = var.kafka_topic_names[count.index]
  cluster_id         = digitalocean_database_cluster.do-db.id
  partition_count    = var.kafka_partition_count
  replication_factor = var.kafka_replication_factor
  config {
    cleanup_policy                      = "compact"
    compression_type                    = "uncompressed"
    delete_retention_ms                 = 14000
    file_delete_delay_ms                = 170000
    flush_messages                      = 92233
    flush_ms                            = 92233720368
    index_interval_bytes                = 40962
    max_compaction_lag_ms               = 9223372036854775807
    max_message_bytes                   = 1048588
    message_down_conversion_enable      = true
    message_format_version              = "3.0-IV1"
    message_timestamp_difference_max_ms = 9223372036854775807
    message_timestamp_type              = "log_append_time"
    min_cleanable_dirty_ratio           = 0.5
    min_compaction_lag_ms               = 20000
    min_insync_replicas                 = 2
    preallocate                         = false
    retention_bytes                     = -1
    retention_ms                        = -1
    segment_bytes                       = 209715200
    segment_index_bytes                 = 10485760
    segment_jitter_ms                   = 0
    segment_ms                          = 604800000
    unclean_leader_election_enable      = true
  }
}