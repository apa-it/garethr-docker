# docker::images
class docker::images {
   $images = hiera_hash('docker::images', undef)
   if ($images) {
      validate_hash($images)
      create_resources(docker::image, $images)
   }
}
