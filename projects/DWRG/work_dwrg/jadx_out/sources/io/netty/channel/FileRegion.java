package io.netty.channel;

import io.netty.util.ReferenceCounted;
import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes.dex */
public interface FileRegion extends ReferenceCounted {
    long count();

    long position();

    long transferTo(WritableByteChannel writableByteChannel, long j) throws IOException;

    long transfered();
}
