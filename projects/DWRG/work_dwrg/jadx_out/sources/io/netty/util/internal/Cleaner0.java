package io.netty.util.internal;

import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import sun.misc.Cleaner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class Cleaner0 {
    private static final long CLEANER_FIELD_OFFSET;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) Cleaner0.class);

    static {
        ByteBuffer direct = ByteBuffer.allocateDirect(1);
        long fieldOffset = -1;
        if (PlatformDependent0.hasUnsafe()) {
            try {
                Field cleanerField = direct.getClass().getDeclaredField("cleaner");
                cleanerField.setAccessible(true);
                Cleaner cleaner = (Cleaner) cleanerField.get(direct);
                cleaner.clean();
                fieldOffset = PlatformDependent0.objectFieldOffset(cleanerField);
            } catch (Throwable th) {
                fieldOffset = -1;
            }
        }
        logger.debug("java.nio.ByteBuffer.cleaner(): {}", fieldOffset != -1 ? "available" : "unavailable");
        CLEANER_FIELD_OFFSET = fieldOffset;
        freeDirectBuffer(direct);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void freeDirectBuffer(ByteBuffer buffer) {
        if (CLEANER_FIELD_OFFSET != -1 && buffer.isDirect()) {
            try {
                Cleaner cleaner = (Cleaner) PlatformDependent0.getObject(buffer, CLEANER_FIELD_OFFSET);
                if (cleaner != null) {
                    cleaner.clean();
                }
            } catch (Throwable th) {
            }
        }
    }

    private Cleaner0() {
    }
}
