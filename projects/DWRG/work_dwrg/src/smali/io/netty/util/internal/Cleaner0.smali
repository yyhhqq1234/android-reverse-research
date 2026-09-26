.class final Lio/netty/util/internal/Cleaner0;
.super Ljava/lang/Object;
.source "Cleaner0.java"


# static fields
.field private static final CLEANER_FIELD_OFFSET:J

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    .line 34
    const-class v6, Lio/netty/util/internal/Cleaner0;

    invoke-static {v6}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v6

    sput-object v6, Lio/netty/util/internal/Cleaner0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 37
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 39
    .local v2, "direct":Ljava/nio/ByteBuffer;
    const-wide/16 v4, -0x1

    .line 40
    .local v4, "fieldOffset":J
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasUnsafe()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "cleaner"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 43
    .local v1, "cleanerField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Cleaner;

    .line 45
    .local v0, "cleaner":Lsun/misc/Cleaner;
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 46
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 52
    .end local v0    # "cleaner":Lsun/misc/Cleaner;
    .end local v1    # "cleanerField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    sget-object v7, Lio/netty/util/internal/Cleaner0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "java.nio.ByteBuffer.cleaner(): {}"

    const-wide/16 v10, -0x1

    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    const-string v6, "available"

    :goto_1
    invoke-interface {v7, v8, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sput-wide v4, Lio/netty/util/internal/Cleaner0;->CLEANER_FIELD_OFFSET:J

    .line 56
    invoke-static {v2}, Lio/netty/util/internal/Cleaner0;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 57
    return-void

    .line 47
    :catch_0
    move-exception v3

    .line 49
    .local v3, "t":Ljava/lang/Throwable;
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 52
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v6, "unavailable"

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 60
    sget-wide v2, Lio/netty/util/internal/Cleaner0;->CLEANER_FIELD_OFFSET:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    :try_start_0
    sget-wide v2, Lio/netty/util/internal/Cleaner0;->CLEANER_FIELD_OFFSET:J

    invoke-static {p0, v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Cleaner;

    .line 65
    .local v0, "cleaner":Lsun/misc/Cleaner;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v0    # "cleaner":Lsun/misc/Cleaner;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
