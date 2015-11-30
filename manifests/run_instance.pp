# docker::run_instance
class docker::run_instance {
   $instances = hiera_hash('docker::run_instances', undef)
   if ($instances) {
      validate_hash($instances)
      create_resources(docker::run, $instances)
   }
}
