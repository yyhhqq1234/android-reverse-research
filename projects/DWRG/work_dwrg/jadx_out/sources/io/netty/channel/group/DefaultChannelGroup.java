package io.netty.channel.group;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ServerChannel;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ConcurrentSet;
import io.netty.util.internal.StringUtil;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class DefaultChannelGroup extends AbstractSet<Channel> implements ChannelGroup {
    private static final AtomicInteger nextId = new AtomicInteger();
    private final EventExecutor executor;
    private final String name;
    private final ConcurrentSet<Channel> nonServerChannels;
    private final ChannelFutureListener remover;
    private final ConcurrentSet<Channel> serverChannels;

    public DefaultChannelGroup(EventExecutor executor) {
        this("group-0x" + Integer.toHexString(nextId.incrementAndGet()), executor);
    }

    public DefaultChannelGroup(String name, EventExecutor executor) {
        this.serverChannels = new ConcurrentSet<>();
        this.nonServerChannels = new ConcurrentSet<>();
        this.remover = new ChannelFutureListener() { // from class: io.netty.channel.group.DefaultChannelGroup.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture future) throws Exception {
                DefaultChannelGroup.this.remove(future.channel());
            }
        };
        if (name == null) {
            throw new NullPointerException("name");
        }
        this.name = name;
        this.executor = executor;
    }

    @Override // io.netty.channel.group.ChannelGroup
    public String name() {
        return this.name;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.nonServerChannels.isEmpty() && this.serverChannels.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.nonServerChannels.size() + this.serverChannels.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object o) {
        if (o instanceof Channel) {
            Channel c = (Channel) o;
            if (o instanceof ServerChannel) {
                return this.serverChannels.contains(c);
            }
            return this.nonServerChannels.contains(c);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Channel channel) {
        ConcurrentSet<Channel> set = channel instanceof ServerChannel ? this.serverChannels : this.nonServerChannels;
        boolean added = set.add(channel);
        if (added) {
            channel.closeFuture().addListener2((GenericFutureListener<? extends Future<? super Void>>) this.remover);
        }
        return added;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object o) {
        boolean removed;
        if (!(o instanceof Channel)) {
            return false;
        }
        Channel c = (Channel) o;
        if (c instanceof ServerChannel) {
            removed = this.serverChannels.remove(c);
        } else {
            removed = this.nonServerChannels.remove(c);
        }
        if (!removed) {
            return false;
        }
        c.closeFuture().removeListener2((GenericFutureListener<? extends Future<? super Void>>) this.remover);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.nonServerChannels.clear();
        this.serverChannels.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Channel> iterator() {
        return new CombinedIterator(this.serverChannels.iterator(), this.nonServerChannels.iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        Collection<Channel> channels = new ArrayList<>(size());
        channels.addAll(this.serverChannels);
        channels.addAll(this.nonServerChannels);
        return channels.toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        ArrayList arrayList = new ArrayList(size());
        arrayList.addAll(this.serverChannels);
        arrayList.addAll(this.nonServerChannels);
        return (T[]) arrayList.toArray(tArr);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture close() {
        return close(ChannelMatchers.all());
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture disconnect() {
        return disconnect(ChannelMatchers.all());
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture deregister() {
        return deregister(ChannelMatchers.all());
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture write(Object message) {
        return write(message, ChannelMatchers.all());
    }

    private static Object safeDuplicate(Object message) {
        if (message instanceof ByteBuf) {
            return ((ByteBuf) message).duplicate().retain();
        }
        if (message instanceof ByteBufHolder) {
            return ((ByteBufHolder) message).duplicate().retain();
        }
        return ReferenceCountUtil.retain(message);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture write(Object message, ChannelMatcher matcher) {
        if (message == null) {
            throw new NullPointerException("message");
        }
        if (matcher == null) {
            throw new NullPointerException("matcher");
        }
        Map<Channel, ChannelFuture> futures = new LinkedHashMap<>(size());
        Iterator<Channel> it = this.nonServerChannels.iterator();
        while (it.hasNext()) {
            Channel c = it.next();
            if (matcher.matches(c)) {
                futures.put(c, c.write(safeDuplicate(message)));
            }
        }
        ReferenceCountUtil.release(message);
        return new DefaultChannelGroupFuture(this, futures, this.executor);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroup flush() {
        return flush(ChannelMatchers.all());
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture flushAndWrite(Object message) {
        return writeAndFlush(message);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture writeAndFlush(Object message) {
        return writeAndFlush(message, ChannelMatchers.all());
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture disconnect(ChannelMatcher matcher) {
        if (matcher == null) {
            throw new NullPointerException("matcher");
        }
        Map<Channel, ChannelFuture> futures = new LinkedHashMap<>(size());
        Iterator<Channel> it = this.serverChannels.iterator();
        while (it.hasNext()) {
            Channel c = it.next();
            if (matcher.matches(c)) {
                futures.put(c, c.disconnect());
            }
        }
        Iterator<Channel> it2 = this.nonServerChannels.iterator();
        while (it2.hasNext()) {
            Channel c2 = it2.next();
            if (matcher.matches(c2)) {
                futures.put(c2, c2.disconnect());
            }
        }
        return new DefaultChannelGroupFuture(this, futures, this.executor);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture close(ChannelMatcher matcher) {
        if (matcher == null) {
            throw new NullPointerException("matcher");
        }
        Map<Channel, ChannelFuture> futures = new LinkedHashMap<>(size());
        Iterator<Channel> it = this.serverChannels.iterator();
        while (it.hasNext()) {
            Channel c = it.next();
            if (matcher.matches(c)) {
                futures.put(c, c.close());
            }
        }
        Iterator<Channel> it2 = this.nonServerChannels.iterator();
        while (it2.hasNext()) {
            Channel c2 = it2.next();
            if (matcher.matches(c2)) {
                futures.put(c2, c2.close());
            }
        }
        return new DefaultChannelGroupFuture(this, futures, this.executor);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture deregister(ChannelMatcher matcher) {
        if (matcher == null) {
            throw new NullPointerException("matcher");
        }
        Map<Channel, ChannelFuture> futures = new LinkedHashMap<>(size());
        Iterator<Channel> it = this.serverChannels.iterator();
        while (it.hasNext()) {
            Channel c = it.next();
            if (matcher.matches(c)) {
                futures.put(c, c.deregister());
            }
        }
        Iterator<Channel> it2 = this.nonServerChannels.iterator();
        while (it2.hasNext()) {
            Channel c2 = it2.next();
            if (matcher.matches(c2)) {
                futures.put(c2, c2.deregister());
            }
        }
        return new DefaultChannelGroupFuture(this, futures, this.executor);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroup flush(ChannelMatcher matcher) {
        Iterator<Channel> it = this.nonServerChannels.iterator();
        while (it.hasNext()) {
            Channel c = it.next();
            if (matcher.matches(c)) {
                c.flush();
            }
        }
        return this;
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture flushAndWrite(Object message, ChannelMatcher matcher) {
        return writeAndFlush(message, matcher);
    }

    @Override // io.netty.channel.group.ChannelGroup
    public ChannelGroupFuture writeAndFlush(Object message, ChannelMatcher matcher) {
        if (message == null) {
            throw new NullPointerException("message");
        }
        Map<Channel, ChannelFuture> futures = new LinkedHashMap<>(size());
        Iterator<Channel> it = this.nonServerChannels.iterator();
        while (it.hasNext()) {
            Channel c = it.next();
            if (matcher.matches(c)) {
                futures.put(c, c.writeAndFlush(safeDuplicate(message)));
            }
        }
        ReferenceCountUtil.release(message);
        return new DefaultChannelGroupFuture(this, futures, this.executor);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public boolean equals(Object o) {
        return this == o;
    }

    @Override // java.lang.Comparable
    public int compareTo(ChannelGroup o) {
        int v = name().compareTo(o.name());
        return v != 0 ? v : System.identityHashCode(this) - System.identityHashCode(o);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return String.valueOf(StringUtil.simpleClassName(this)) + "(name: " + name() + ", size: " + size() + ')';
    }
}
