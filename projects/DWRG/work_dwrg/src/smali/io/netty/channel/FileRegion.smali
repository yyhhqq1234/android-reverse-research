.class public interface abstract Lio/netty/channel/FileRegion;
.super Ljava/lang/Object;
.source "FileRegion.java"

# interfaces
.implements Lio/netty/util/ReferenceCounted;


# virtual methods
.method public abstract count()J
.end method

.method public abstract position()J
.end method

.method public abstract transferTo(Ljava/nio/channels/WritableByteChannel;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract transfered()J
.end method
