package io.netty.util.internal;

import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class ThreadLocalRandom extends Random {
    private static final long addend = 11;
    private static volatile long initialSeedUniquifier = 0;
    private static final long mask = 281474976710655L;
    private static final long multiplier = 25214903917L;
    private static final long serialVersionUID = -5851777807851030925L;
    boolean initialized;
    private long pad0;
    private long pad1;
    private long pad2;
    private long pad3;
    private long pad4;
    private long pad5;
    private long pad6;
    private long pad7;
    private long rnd;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ThreadLocalRandom.class);
    private static final AtomicLong seedUniquifier = new AtomicLong();

    public static void setInitialSeedUniquifier(long initialSeedUniquifier2) {
        initialSeedUniquifier = initialSeedUniquifier2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0107, code lost:
    
        r6 = ((((((((r10[0] & 255) << 56) | ((r10[1] & 255) << 48)) | ((r10[2] & 255) << 40)) | ((r10[3] & 255) << 32)) | ((r10[4] & 255) << 24)) | ((r10[5] & 255) << 16)) | ((r10[6] & 255) << 8)) | (r10[7] & 255);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized long getInitialSeedUniquifier() {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.ThreadLocalRandom.getInitialSeedUniquifier():long");
    }

    private static long newSeed() {
        long current;
        long actualCurrent;
        long next;
        long startTime = System.nanoTime();
        do {
            current = seedUniquifier.get();
            actualCurrent = current != 0 ? current : getInitialSeedUniquifier();
            next = actualCurrent * 181783497276652981L;
        } while (!seedUniquifier.compareAndSet(current, next));
        if (current == 0 && logger.isDebugEnabled()) {
            logger.debug(String.format("-Dio.netty.initialSeedUniquifier: 0x%016x (took %d ms)", Long.valueOf(actualCurrent), Long.valueOf(TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - startTime))));
        }
        return System.nanoTime() ^ next;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThreadLocalRandom() {
        super(newSeed());
        this.initialized = true;
    }

    public static ThreadLocalRandom current() {
        return InternalThreadLocalMap.get().random();
    }

    @Override // java.util.Random
    public void setSeed(long seed) {
        if (this.initialized) {
            throw new UnsupportedOperationException();
        }
        this.rnd = (multiplier ^ seed) & mask;
    }

    @Override // java.util.Random
    protected int next(int bits) {
        this.rnd = ((this.rnd * multiplier) + addend) & mask;
        return (int) (this.rnd >>> (48 - bits));
    }

    public int nextInt(int least, int bound) {
        if (least >= bound) {
            throw new IllegalArgumentException();
        }
        return nextInt(bound - least) + least;
    }

    public long nextLong(long n) {
        if (n <= 0) {
            throw new IllegalArgumentException("n must be positive");
        }
        long offset = 0;
        while (n >= 2147483647L) {
            int bits = next(2);
            long half = n >>> 1;
            long nextn = (bits & 2) == 0 ? half : n - half;
            if ((bits & 1) == 0) {
                offset += n - nextn;
            }
            n = nextn;
        }
        return nextInt((int) n) + offset;
    }

    public long nextLong(long least, long bound) {
        if (least >= bound) {
            throw new IllegalArgumentException();
        }
        return nextLong(bound - least) + least;
    }

    public double nextDouble(double n) {
        if (n <= 0.0d) {
            throw new IllegalArgumentException("n must be positive");
        }
        return nextDouble() * n;
    }

    public double nextDouble(double least, double bound) {
        if (least >= bound) {
            throw new IllegalArgumentException();
        }
        return (nextDouble() * (bound - least)) + least;
    }
}
