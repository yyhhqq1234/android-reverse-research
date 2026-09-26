.class final Lio/netty/util/internal/PlatformDependent0;
.super Ljava/lang/Object;
.source "PlatformDependent0.java"


# static fields
.field private static final ADDRESS_FIELD_OFFSET:J

.field private static final BIG_ENDIAN:Z

.field private static final UNALIGNED:Z

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 38
    const-class v11, Lio/netty/util/internal/PlatformDependent0;

    invoke-static {v11}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v11

    sput-object v11, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 40
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_0
    sput-boolean v11, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    .line 57
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 60
    .local v4, "direct":Ljava/nio/ByteBuffer;
    :try_start_0
    const-class v11, Ljava/nio/Buffer;

    const-string v12, "address"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 61
    .local v0, "addressField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 75
    :cond_0
    :goto_1
    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v13, "java.nio.Buffer.address: {}"

    if-eqz v0, :cond_4

    const-string v11, "available"

    :goto_2
    invoke-interface {v12, v13, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    if-eqz v0, :cond_6

    .line 80
    :try_start_1
    const-class v11, Lsun/misc/Unsafe;

    const-string v12, "theUnsafe"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 81
    .local v10, "unsafeField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/misc/Unsafe;

    .line 83
    .local v9, "unsafe":Lsun/misc/Unsafe;
    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v13, "sun.misc.Unsafe.theUnsafe: {}"

    if-eqz v9, :cond_5

    const-string v11, "available"

    :goto_3
    invoke-interface {v12, v13, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 89
    if-eqz v9, :cond_1

    .line 90
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "copyMemory"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/Object;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ljava/lang/Object;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v12, "sun.misc.Unsafe.copyMemory: available"

    invoke-interface {v11, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    .end local v10    # "unsafeField":Ljava/lang/reflect/Field;
    :cond_1
    :goto_4
    sput-object v9, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 113
    if-nez v9, :cond_7

    .line 114
    const-wide/16 v12, -0x1

    sput-wide v12, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 115
    const/4 v11, 0x0

    sput-boolean v11, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 134
    :goto_5
    return-void

    .line 40
    .end local v0    # "addressField":Ljava/lang/reflect/Field;
    .end local v4    # "direct":Ljava/nio/ByteBuffer;
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 66
    .restart local v0    # "addressField":Ljava/lang/reflect/Field;
    .restart local v4    # "direct":Ljava/nio/ByteBuffer;
    :cond_3
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 68
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    .end local v0    # "addressField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    .line 73
    .local v6, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "addressField":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 75
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_4
    const-string v11, "unavailable"

    goto :goto_2

    .line 83
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafeField":Ljava/lang/reflect/Field;
    :cond_5
    :try_start_4
    const-string v11, "unavailable"

    goto :goto_3

    .line 94
    :catch_1
    move-exception v6

    .line 95
    .local v6, "t":Ljava/lang/NoSuchMethodError;
    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v12, "sun.misc.Unsafe.copyMemory: unavailable"

    invoke-interface {v11, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 96
    throw v6

    .line 101
    .end local v6    # "t":Ljava/lang/NoSuchMethodError;
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "unsafeField":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v3

    .line 103
    .local v3, "cause":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 104
    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_4

    .line 97
    .end local v3    # "cause":Ljava/lang/Throwable;
    .restart local v10    # "unsafeField":Ljava/lang/reflect/Field;
    :catch_3
    move-exception v5

    .line 98
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v12, "sun.misc.Unsafe.copyMemory: unavailable"

    invoke-interface {v11, v12}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 99
    throw v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 108
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "unsafeField":Ljava/lang/reflect/Field;
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_4

    .line 117
    :cond_7
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    sput-wide v12, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 120
    :try_start_5
    const-string v11, "java.nio.Bits"

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 121
    .local v2, "bitsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "unaligned"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 122
    .local v8, "unalignedMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 123
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-result v7

    .line 131
    .end local v2    # "bitsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "unalignedMethod":Ljava/lang/reflect/Method;
    .local v7, "unaligned":Z
    :goto_6
    sput-boolean v7, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 132
    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v12, "java.nio.Bits.unaligned: {}"

    sget-boolean v13, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 124
    .end local v7    # "unaligned":Z
    :catch_4
    move-exception v6

    .line 126
    .local v6, "t":Ljava/lang/Throwable;
    const-string v11, "os.arch"

    const-string v12, ""

    invoke-static {v11, v12}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "arch":Ljava/lang/String;
    const-string v11, "^(i[3-6]86|x86(_64)?|x64|amd64)$"

    invoke-virtual {v1, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    .restart local v7    # "unaligned":Z
    goto :goto_6
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    return-void
.end method

.method static addressSize()I
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method static allocateMemory(J)J
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 373
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static arrayBaseOffset()J
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method static copyMemory(JJJ)V
    .locals 8
    .param p0, "srcAddr"    # J
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .prologue
    .line 294
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 295
    const-wide/32 v0, 0x100000

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 296
    .local v6, "size":J
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v7}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 297
    sub-long/2addr p4, v6

    .line 298
    add-long/2addr p0, v6

    .line 299
    add-long/2addr p2, v6

    .line 300
    goto :goto_0

    .line 301
    .end local v6    # "size":J
    :cond_0
    return-void
.end method

.method static copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 12
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcOffset"    # J
    .param p3, "dst"    # Ljava/lang/Object;
    .param p4, "dstOffset"    # J
    .param p6, "length"    # J

    .prologue
    .line 305
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_0

    .line 306
    const-wide/32 v2, 0x100000

    move-wide/from16 v0, p6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 307
    .local v10, "size":J
    sget-object v3, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 308
    sub-long p6, p6, v10

    .line 309
    add-long/2addr p1, v10

    .line 310
    add-long p4, p4, v10

    .line 311
    goto :goto_0

    .line 312
    .end local v10    # "size":J
    :cond_0
    return-void
.end method

.method static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 151
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 147
    invoke-static {p0}, Lio/netty/util/internal/Cleaner0;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 148
    return-void
.end method

.method static freeMemory(J)V
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 377
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 378
    return-void
.end method

.method static getByte(J)B
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 179
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$1;

    invoke-direct {v0, p0}, Lio/netty/util/internal/PlatformDependent0$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$2;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method static getInt(J)I
    .locals 10
    .param p0, "address"    # J

    .prologue
    const-wide/16 v8, 0x3

    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x1

    .line 193
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 195
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    .line 196
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-long v2, p0, v4

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-long v2, p0, v6

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-long v2, p0, v8

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    .line 201
    :cond_1
    add-long v0, p0, v8

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-long v2, p0, v6

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-long v2, p0, v4

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .prologue
    .line 167
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getLong(J)J
    .locals 12
    .param p0, "address"    # J

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v5, 0x8

    const-wide/16 v6, 0xff

    .line 209
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    .line 221
    :goto_0
    return-wide v0

    .line 211
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    .line 212
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v10

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v9

    or-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    const-wide/16 v2, 0x6

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    goto :goto_0

    .line 221
    :cond_1
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x6

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v10

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v9

    or-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    goto/16 :goto_0
.end method

.method private static getLong(Ljava/lang/Object;J)J
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .prologue
    .line 171
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .prologue
    .line 159
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .prologue
    .line 163
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getShort(J)S
    .locals 4
    .param p0, "address"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 183
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    .line 186
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0

    .line 188
    :cond_1
    add-long v0, p0, v2

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 356
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$3;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method static hasUnsafe()Z
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newAtomicIntegerFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/netty/util/internal/UnsafeAtomicIntegerFieldUpdater;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1, p0, p1}, Lio/netty/util/internal/UnsafeAtomicIntegerFieldUpdater;-><init>(Lsun/misc/Unsafe;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method static newAtomicLongFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/netty/util/internal/UnsafeAtomicLongFieldUpdater;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1, p0, p1}, Lio/netty/util/internal/UnsafeAtomicLongFieldUpdater;-><init>(Lsun/misc/Unsafe;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method static newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<TU;TW;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    new-instance v0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1, p0, p1}, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;-><init>(Lsun/misc/Unsafe;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 175
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static putByte(JB)V
    .locals 2
    .param p0, "address"    # J
    .param p2, "value"    # B

    .prologue
    .line 237
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 238
    return-void
.end method

.method static putInt(JI)V
    .locals 10
    .param p0, "address"    # J
    .param p2, "value"    # I

    .prologue
    const-wide/16 v8, 0x3

    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x1

    .line 253
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 266
    :goto_0
    return-void

    .line 255
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    .line 256
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 257
    add-long v0, p0, v4

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 258
    add-long v0, p0, v6

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 259
    add-long v0, p0, v8

    int-to-byte v2, p2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0

    .line 261
    :cond_1
    add-long v0, p0, v8

    ushr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 262
    add-long v0, p0, v6

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 263
    add-long v0, p0, v4

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 264
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0
.end method

.method static putLong(JJ)V
    .locals 10
    .param p0, "address"    # J
    .param p2, "value"    # J

    .prologue
    const/16 v8, 0x28

    const/16 v7, 0x20

    const/16 v6, 0x18

    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 269
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 290
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    .line 272
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 273
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 274
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    ushr-long v2, p2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 275
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    ushr-long v2, p2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 276
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    ushr-long v2, p2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 277
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    ushr-long v2, p2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 278
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    ushr-long v2, p2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 279
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0

    .line 281
    :cond_1
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    const/16 v2, 0x38

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 282
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 283
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    ushr-long v2, p2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 284
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    ushr-long v2, p2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 285
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    ushr-long v2, p2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 286
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    ushr-long v2, p2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 287
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    ushr-long v2, p2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 288
    long-to-int v0, p2

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto/16 :goto_0
.end method

.method static putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "address"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 233
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    return-void
.end method

.method static putShort(JS)V
    .locals 4
    .param p0, "address"    # J
    .param p2, "value"    # S

    .prologue
    const-wide/16 v2, 0x1

    .line 241
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    .line 244
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 245
    add-long v0, p0, v2

    int-to-byte v2, p2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0

    .line 247
    :cond_1
    add-long v0, p0, v2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 248
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0
.end method

.method static throwException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->throwException(Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method
