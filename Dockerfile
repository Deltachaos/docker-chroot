FROM busybox

RUN mkdir /.root && \
mkdir /.root/.root && \
ln -s /.root/bin /.root/bin && \
ln -s /.root/boot /.root/boot && \
ln -s /.root/home /.root/home && \
ln -s /.root/lib /.root/lib && \
ln -s /.root/lib32 /.root/lib32 && \
ln -s /.root/lib64 /.root/lib64 && \
ln -s /.root/libx32 /.root/libx32 && \
ln -s /.root/media /.root/media && \
ln -s /.root/mnt /.root/mnt && \
ln -s /.root/opt /.root/opt && \
ln -s /.root/root /.root/root && \
ln -s /.root/ /.root/run && \
ln -s /.root/sbin /.root/sbin && \
ln -s /.root/srv /.root/srv && \
ln -s /.root/tmp /.root/tmp && \
ln -s /.root/usr /.root/usr && \
ln -s /.root/var /.root/var

FROM scratch
COPY --from=0 /.root /

ENTRYPOINT ["/sbin/init"]

