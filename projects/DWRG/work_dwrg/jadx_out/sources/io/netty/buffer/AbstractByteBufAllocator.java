package io.netty.buffer;

import io.netty.util.ResourceLeak;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;

/* loaded from: classes.dex */
public abstract class AbstractByteBufAllocator implements ByteBufAllocator {
    private static /* synthetic */ int[] $SWITCH_TABLE$io$netty$util$ResourceLeakDetector$Level = null;
    private static final int DEFAULT_INITIAL_CAPACITY = 256;
    private static final int DEFAULT_MAX_COMPONENTS = 16;
    private final boolean directByDefault;
    private final ByteBuf emptyBuf;

    protected abstract ByteBuf newDirectBuffer(int i, int i2);

    protected abstract ByteBuf newHeapBuffer(int i, int i2);

    static /* synthetic */ int[] $SWITCH_TABLE$io$netty$util$ResourceLeakDetector$Level() {
        int[] iArr = $SWITCH_TABLE$io$netty$util$ResourceLeakDetector$Level;
        if (iArr == null) {
            iArr = new int[ResourceLeakDetector.Level.valuesCustom().length];
            try {
                iArr[ResourceLeakDetector.Level.ADVANCED.ordinal()] = 3;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[ResourceLeakDetector.Level.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[ResourceLeakDetector.Level.PARANOID.ordinal()] = 4;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[ResourceLeakDetector.Level.SIMPLE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            $SWITCH_TABLE$io$netty$util$ResourceLeakDetector$Level = iArr;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ByteBuf toLeakAwareBuffer(ByteBuf buf) {
        switch ($SWITCH_TABLE$io$netty$util$ResourceLeakDetector$Level()[ResourceLeakDetector.getLevel().ordinal()]) {
            case 2:
                ResourceLeak leak = AbstractByteBuf.leakDetector.open(buf);
                if (leak != null) {
                    return new SimpleLeakAwareByteBuf(buf, leak);
                }
                return buf;
            case 3:
            case 4:
                ResourceLeak leak2 = AbstractByteBuf.leakDetector.open(buf);
                if (leak2 != null) {
                    return new AdvancedLeakAwareByteBuf(buf, leak2);
                }
                return buf;
            default:
                return buf;
        }
    }

    protected AbstractByteBufAllocator() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractByteBufAllocator(boolean preferDirect) {
        this.directByDefault = preferDirect && PlatformDependent.hasUnsafe();
        this.emptyBuf = new EmptyByteBuf(this);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer() {
        return this.directByDefault ? directBuffer() : heapBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer(int initialCapacity) {
        return this.directByDefault ? directBuffer(initialCapacity) : heapBuffer(initialCapacity);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf buffer(int initialCapacity, int maxCapacity) {
        return this.directByDefault ? directBuffer(initialCapacity, maxCapacity) : heapBuffer(initialCapacity, maxCapacity);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer() {
        return PlatformDependent.hasUnsafe() ? directBuffer(256) : heapBuffer(256);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer(int initialCapacity) {
        return PlatformDependent.hasUnsafe() ? directBuffer(initialCapacity) : heapBuffer(initialCapacity);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf ioBuffer(int initialCapacity, int maxCapacity) {
        return PlatformDependent.hasUnsafe() ? directBuffer(initialCapacity, maxCapacity) : heapBuffer(initialCapacity, maxCapacity);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer() {
        return heapBuffer(256, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer(int initialCapacity) {
        return heapBuffer(initialCapacity, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf heapBuffer(int initialCapacity, int maxCapacity) {
        if (initialCapacity == 0 && maxCapacity == 0) {
            return this.emptyBuf;
        }
        validate(initialCapacity, maxCapacity);
        return newHeapBuffer(initialCapacity, maxCapacity);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer() {
        return directBuffer(256, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer(int initialCapacity) {
        return directBuffer(initialCapacity, Integer.MAX_VALUE);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public ByteBuf directBuffer(int initialCapacity, int maxCapacity) {
        if (initialCapacity == 0 && maxCapacity == 0) {
            return this.emptyBuf;
        }
        validate(initialCapacity, maxCapacity);
        return newDirectBuffer(initialCapacity, maxCapacity);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeBuffer() {
        return this.directByDefault ? compositeDirectBuffer() : compositeHeapBuffer();
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeBuffer(int maxNumComponents) {
        return this.directByDefault ? compositeDirectBuffer(maxNumComponents) : compositeHeapBuffer(maxNumComponents);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer() {
        return compositeHeapBuffer(16);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeHeapBuffer(int maxNumComponents) {
        return new CompositeByteBuf(this, false, maxNumComponents);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer() {
        return compositeDirectBuffer(16);
    }

    @Override // io.netty.buffer.ByteBufAllocator
    public CompositeByteBuf compositeDirectBuffer(int maxNumComponents) {
        return new CompositeByteBuf(this, true, maxNumComponents);
    }

    private static void validate(int initialCapacity, int maxCapacity) {
        if (initialCapacity < 0) {
            throw new IllegalArgumentException("initialCapacity: " + initialCapacity + " (expectd: 0+)");
        }
        if (initialCapacity > maxCapacity) {
            throw new IllegalArgumentException(String.format("initialCapacity: %d (expected: not greater than maxCapacity(%d)", Integer.valueOf(initialCapacity), Integer.valueOf(maxCapacity)));
        }
    }

    public String toString() {
        return String.valueOf(StringUtil.simpleClassName(this)) + "(directByDefault: " + this.directByDefault + ')';
    }
}
