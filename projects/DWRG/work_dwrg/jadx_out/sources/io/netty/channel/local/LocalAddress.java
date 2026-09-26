package io.netty.channel.local;

import com.netease.unisdk.gmbridge.utils.ResIdReader;
import io.netty.channel.Channel;
import java.net.SocketAddress;

/* loaded from: classes.dex */
public final class LocalAddress extends SocketAddress implements Comparable<LocalAddress> {
    public static final LocalAddress ANY = new LocalAddress("ANY");
    private static final long serialVersionUID = 4644331421130916435L;
    private final String id;
    private final String strVal;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalAddress(Channel channel) {
        StringBuilder buf = new StringBuilder(16);
        buf.append("local:E");
        buf.append(Long.toHexString((channel.hashCode() & 4294967295L) | 4294967296L));
        buf.setCharAt(7, ':');
        this.id = buf.substring(6);
        this.strVal = buf.toString();
    }

    public LocalAddress(String id) {
        if (id == null) {
            throw new NullPointerException(ResIdReader.RES_TYPE_ID);
        }
        String id2 = id.trim().toLowerCase();
        if (id2.isEmpty()) {
            throw new IllegalArgumentException("empty id");
        }
        this.id = id2;
        this.strVal = "local:" + id2;
    }

    public String id() {
        return this.id;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public boolean equals(Object o) {
        if (o instanceof LocalAddress) {
            return this.id.equals(((LocalAddress) o).id);
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalAddress o) {
        return this.id.compareTo(o.id);
    }

    public String toString() {
        return this.strVal;
    }
}
