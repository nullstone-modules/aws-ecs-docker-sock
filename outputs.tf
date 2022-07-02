output "mount_points" {
  value = [
    {
      name      = "docker-sock"
      path      = "/var/run/docker.sock"
      host_path = "/var/run/docker.sock"
    }
  ]
}
