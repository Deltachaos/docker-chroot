
# Run debootstrap of any distro


# Start container

    docker run --privileged -d -v /app/root/:/.root -v /app/root/etc:/etc -v /sys/fs/cgroup:/sys/fs/cgroup:ro chroot
