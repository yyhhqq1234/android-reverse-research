.class public final Lio/netty/util/internal/PlatformDependent;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# static fields
.field private static final ADDRESS_SIZE:I

.field private static final ARRAY_BASE_OFFSET:J

.field private static final BIT_MODE:I

.field private static final CAN_ENABLE_TCP_NODELAY_BY_DEFAULT:Z

.field private static final CAN_USE_CHM_V8:Z

.field private static final DIRECT_BUFFER_PREFERRED:Z

.field private static final HAS_JAVASSIST:Z

.field private static final HAS_UNSAFE:Z

.field private static final IS_ANDROID:Z

.field private static final IS_ROOT:Z

.field private static final IS_WINDOWS:Z

.field private static final JAVA_VERSION:I

.field private static final MAX_DIRECT_MEMORY:J

.field private static final MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN:Ljava/util/regex/Pattern;

.field private static final TMPDIR:Ljava/io/File;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    const-class v0, Lio/netty/util/internal/PlatformDependent;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 58
    const-string v0, "\\s*-XX:MaxDirectMemorySize\\s*=\\s*([0-9]+)\\s*([kKmMgG]?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid0()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_ANDROID:Z

    .line 62
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows0()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_WINDOWS:Z

    .line 63
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isRoot0()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_ROOT:Z

    .line 65
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion0()I

    move-result v0

    sput v0, Lio/netty/util/internal/PlatformDependent;->JAVA_VERSION:I

    .line 67
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_ENABLE_TCP_NODELAY_BY_DEFAULT:Z

    .line 69
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe0()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->HAS_UNSAFE:Z

    .line 70
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->HAS_UNSAFE:Z

    if-eqz v0, :cond_3

    sget v0, Lio/netty/util/internal/PlatformDependent;->JAVA_VERSION:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_USE_CHM_V8:Z

    .line 71
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->HAS_UNSAFE:Z

    if-eqz v0, :cond_4

    const-string v0, "io.netty.noPreferDirect"

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->DIRECT_BUFFER_PREFERRED:Z

    .line 73
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maxDirectMemory0()J

    move-result-wide v4

    sput-wide v4, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY:J

    .line 75
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->arrayBaseOffset0()J

    move-result-wide v4

    sput-wide v4, Lio/netty/util/internal/PlatformDependent;->ARRAY_BASE_OFFSET:J

    .line 77
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasJavassist0()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent;->HAS_JAVASSIST:Z

    .line 79
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->tmpdir0()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent;->TMPDIR:Ljava/io/File;

    .line 81
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->bitMode0()I

    move-result v0

    sput v0, Lio/netty/util/internal/PlatformDependent;->BIT_MODE:I

    .line 83
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->addressSize0()I

    move-result v0

    sput v0, Lio/netty/util/internal/PlatformDependent;->ADDRESS_SIZE:I

    .line 86
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.noPreferDirect: {}"

    sget-boolean v4, Lio/netty/util/internal/PlatformDependent;->DIRECT_BUFFER_PREFERRED:Z

    if-nez v4, :cond_5

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Your platform does not provide complete low-level API for accessing direct buffers reliably. Unless explicitly requested, heap buffer will always be preferred to avoid potential system unstability."

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    .line 96
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 67
    goto :goto_0

    :cond_3
    move v0, v2

    .line 70
    goto :goto_1

    :cond_4
    move v0, v2

    .line 71
    goto :goto_2

    :cond_5
    move v1, v2

    .line 87
    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    return-void
.end method

.method public static addressSize()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lio/netty/util/internal/PlatformDependent;->ADDRESS_SIZE:I

    return v0
.end method

.method private static addressSize0()I
    .locals 1

    .prologue
    .line 837
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    const/4 v0, -0x1

    .line 840
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->addressSize()I

    move-result v0

    goto :goto_0
.end method

.method public static allocateMemory(J)J
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 187
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static arrayBaseOffset0()J
    .locals 2

    .prologue
    .line 619
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const-wide/16 v0, -0x1

    .line 623
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->arrayBaseOffset()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static bitMode()I
    .locals 1

    .prologue
    .line 175
    sget v0, Lio/netty/util/internal/PlatformDependent;->BIT_MODE:I

    return v0
.end method

.method private static bitMode0()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 795
    const-string v5, "io.netty.bitMode"

    invoke-static {v5, v6}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 796
    .local v2, "bitMode":I
    if-lez v2, :cond_0

    .line 797
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-Dio.netty.bitMode: {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 832
    .end local v2    # "bitMode":I
    .local v0, "BIT_PATTERN":Ljava/util/regex/Pattern;
    .local v1, "arch":Ljava/lang/String;
    .local v3, "m":Ljava/util/regex/Matcher;
    .local v4, "vm":Ljava/lang/String;
    :goto_0
    return v2

    .line 802
    .end local v0    # "BIT_PATTERN":Ljava/util/regex/Pattern;
    .end local v1    # "arch":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "vm":Ljava/lang/String;
    .restart local v2    # "bitMode":I
    :cond_0
    const-string v5, "sun.arch.data.model"

    invoke-static {v5, v6}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 803
    if-lez v2, :cond_1

    .line 804
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-Dio.netty.bitMode: {} (sun.arch.data.model)"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 807
    :cond_1
    const-string v5, "com.ibm.vm.bitmode"

    invoke-static {v5, v6}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 808
    if-lez v2, :cond_2

    .line 809
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-Dio.netty.bitMode: {} (com.ibm.vm.bitmode)"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 814
    :cond_2
    const-string v5, "os.arch"

    const-string v6, ""

    invoke-static {v5, v6}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 815
    .restart local v1    # "arch":Ljava/lang/String;
    const-string v5, "amd64"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "x86_64"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 816
    :cond_3
    const/16 v2, 0x40

    .line 821
    :cond_4
    :goto_1
    if-lez v2, :cond_5

    .line 822
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-Dio.netty.bitMode: {} (os.arch: {})"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 826
    :cond_5
    const-string v5, "java.vm.name"

    const-string v6, ""

    invoke-static {v5, v6}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 827
    .restart local v4    # "vm":Ljava/lang/String;
    const-string v5, "([1-9][0-9]+)-?bit"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 828
    .restart local v0    # "BIT_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 829
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 830
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 817
    .end local v0    # "BIT_PATTERN":Ljava/util/regex/Pattern;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "vm":Ljava/lang/String;
    :cond_6
    const-string v5, "i386"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "i486"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "i586"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "i686"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 818
    :cond_7
    const/16 v2, 0x20

    goto :goto_1

    .line 832
    .restart local v0    # "BIT_PATTERN":Ljava/util/regex/Pattern;
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "vm":Ljava/lang/String;
    :cond_8
    const/16 v2, 0x40

    goto/16 :goto_0
.end method

.method public static canEnableTcpNoDelayByDefault()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_ENABLE_TCP_NODELAY_BY_DEFAULT:Z

    return v0
.end method

.method public static copyMemory(JJJ)V
    .locals 0
    .param p0, "srcAddr"    # J
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .prologue
    .line 335
    invoke-static/range {p0 .. p5}, Lio/netty/util/internal/PlatformDependent0;->copyMemory(JJJ)V

    .line 336
    return-void
.end method

.method public static copyMemory(J[BIJ)V
    .locals 8
    .param p0, "srcAddr"    # J
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # J

    .prologue
    .line 343
    const/4 v0, 0x0

    sget-wide v2, Lio/netty/util/internal/PlatformDependent;->ARRAY_BASE_OFFSET:J

    int-to-long v4, p3

    add-long/2addr v4, v2

    move-wide v1, p0

    move-object v3, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lio/netty/util/internal/PlatformDependent0;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 344
    return-void
.end method

.method public static copyMemory([BIJJ)V
    .locals 8
    .param p0, "src"    # [B
    .param p1, "srcIndex"    # I
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .prologue
    .line 339
    sget-wide v0, Lio/netty/util/internal/PlatformDependent;->ARRAY_BASE_OFFSET:J

    int-to-long v2, p1

    add-long v1, v0, v2

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lio/netty/util/internal/PlatformDependent0;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 340
    return-void
.end method

.method public static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 279
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static directBufferPreferred()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->DIRECT_BUFFER_PREFERRED:Z

    return v0
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 271
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 276
    :cond_0
    return-void
.end method

.method public static freeMemory(J)V
    .locals 0
    .param p0, "address"    # J

    .prologue
    .line 191
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->freeMemory(J)V

    .line 192
    return-void
.end method

.method public static getByte(J)B
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 299
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    return v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
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
    .line 409
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(J)I
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 307
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getInt(J)I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .prologue
    .line 291
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public static getLong(J)J
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 311
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .prologue
    .line 283
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .prologue
    .line 287
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getShort(J)S
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 303
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getShort(J)S

    move-result v0

    return v0
.end method

.method public static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static hasJavassist()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->HAS_JAVASSIST:Z

    return v0
.end method

.method private static hasJavassist0()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 688
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    .local v0, "noJavassist":Z
    :goto_0
    return v2

    .line 692
    .end local v0    # "noJavassist":Z
    :cond_0
    const-string v3, "io.netty.noJavassist"

    invoke-static {v3, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 693
    .restart local v0    # "noJavassist":Z
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "-Dio.netty.noJavassist: {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    if-eqz v0, :cond_1

    .line 696
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Javassist: unavailable (io.netty.noJavassist)"

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_1
    :try_start_0
    const-class v3, Ljava/lang/Object;

    const-class v4, Lio/netty/util/internal/PlatformDependent;

    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->generate(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lio/netty/util/internal/TypeParameterMatcher;

    .line 702
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Javassist: available"

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    const/4 v2, 0x1

    goto :goto_0

    .line 704
    :catch_0
    move-exception v1

    .line 706
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Javassist: unavailable"

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 707
    sget-object v3, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "You don\'t have Javassist in your class path or you don\'t have enough permission to load dynamically generated classes.  Please check the configuration for better performance."

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasUnsafe()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->HAS_UNSAFE:Z

    return v0
.end method

.method private static hasUnsafe0()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 582
    const-string v5, "io.netty.noUnsafe"

    invoke-static {v5, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 583
    .local v1, "noUnsafe":Z
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-Dio.netty.noUnsafe: {}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "sun.misc.Unsafe: unavailable (Android)"

    invoke-interface {v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    move v0, v4

    .line 614
    :goto_0
    return v0

    .line 590
    :cond_0
    if-eqz v1, :cond_1

    .line 591
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "sun.misc.Unsafe: unavailable (io.netty.noUnsafe)"

    invoke-interface {v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    move v0, v4

    .line 592
    goto :goto_0

    .line 597
    :cond_1
    const-string v5, "io.netty.tryUnsafe"

    invoke-static {v5}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 598
    const-string v5, "io.netty.tryUnsafe"

    invoke-static {v5, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 603
    .local v3, "tryUnsafe":Z
    :goto_1
    if-nez v3, :cond_3

    .line 604
    sget-object v5, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "sun.misc.Unsafe: unavailable (io.netty.tryUnsafe/org.jboss.netty.tryUnsafe)"

    invoke-interface {v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    move v0, v4

    .line 605
    goto :goto_0

    .line 600
    .end local v3    # "tryUnsafe":Z
    :cond_2
    const-string v5, "org.jboss.netty.tryUnsafe"

    invoke-static {v5, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .restart local v3    # "tryUnsafe":Z
    goto :goto_1

    .line 609
    :cond_3
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasUnsafe()Z

    move-result v0

    .line 610
    .local v0, "hasUnsafe":Z
    sget-object v6, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v7, "sun.misc.Unsafe: {}"

    if-eqz v0, :cond_4

    const-string v5, "available"

    :goto_2
    invoke-interface {v6, v7, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 612
    .end local v0    # "hasUnsafe":Z
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    move v0, v4

    .line 614
    goto :goto_0

    .line 610
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "hasUnsafe":Z
    :cond_4
    const-string v5, "unavailable"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static isAndroid()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_ANDROID:Z

    return v0
.end method

.method private static isAndroid0()Z
    .locals 5

    .prologue
    .line 429
    :try_start_0
    const-string v2, "android.app.Application"

    const/4 v3, 0x0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    const/4 v0, 0x1

    .line 436
    .local v0, "android":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 437
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Platform: Android"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 439
    :cond_0
    return v0

    .line 431
    .end local v0    # "android":Z
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "android":Z
    goto :goto_0
.end method

.method public static isRoot()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_ROOT:Z

    return v0
.end method

.method private static isRoot0()Z
    .locals 24

    .prologue
    .line 451
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 452
    const/16 v20, 0x0

    .line 540
    .local v3, "ID_COMMANDS":[Ljava/lang/String;
    .local v5, "UID_PATTERN":Ljava/util/regex/Pattern;
    .local v6, "arr$":[Ljava/lang/String;
    .local v10, "i$":I
    .local v14, "len$":I
    :cond_0
    :goto_0
    return v20

    .line 455
    .end local v3    # "ID_COMMANDS":[Ljava/lang/String;
    .end local v5    # "UID_PATTERN":Ljava/util/regex/Pattern;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    :cond_1
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v3, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/usr/bin/id"

    aput-object v21, v3, v20

    const/16 v20, 0x1

    const-string v21, "/bin/id"

    aput-object v21, v3, v20

    const/16 v20, 0x2

    const-string v21, "id"

    aput-object v21, v3, v20

    const/16 v20, 0x3

    const-string v21, "/usr/xpg4/bin/id"

    aput-object v21, v3, v20

    .line 456
    .restart local v3    # "ID_COMMANDS":[Ljava/lang/String;
    const-string v20, "^(?:0|[1-9][0-9]*)$"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 457
    .restart local v5    # "UID_PATTERN":Ljava/util/regex/Pattern;
    move-object v6, v3

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v14, v6

    .restart local v14    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v14, :cond_9

    aget-object v11, v6, v10

    .line 458
    .local v11, "idCmd":Ljava/lang/String;
    const/16 v16, 0x0

    .line 459
    .local v16, "p":Ljava/lang/Process;
    const/4 v12, 0x0

    .line 460
    .local v12, "in":Ljava/io/BufferedReader;
    const/16 v19, 0x0

    .line 462
    .local v19, "uid":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v11, v21, v22

    const/16 v22, 0x1

    const-string v23, "-u"

    aput-object v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    .line 463
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    sget-object v22, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct/range {v20 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v12    # "in":Ljava/io/BufferedReader;
    .local v13, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 465
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 469
    :goto_2
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v8

    .line 470
    .local v8, "exitCode":I
    if-eqz v8, :cond_2

    .line 471
    const/16 v19, 0x0

    .line 482
    :cond_2
    if-eqz v13, :cond_3

    .line 484
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 489
    :cond_3
    :goto_3
    if-eqz v16, :cond_10

    .line 491
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v12, v13

    .line 498
    .end local v8    # "exitCode":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :cond_4
    :goto_4
    if-eqz v19, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 499
    sget-object v20, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v21, "UID: {}"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const-string v20, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    goto/16 :goto_0

    .line 492
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "exitCode":I
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v20

    move-object v12, v13

    .line 494
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 478
    .end local v8    # "exitCode":I
    :catch_1
    move-exception v7

    .line 480
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    const/16 v19, 0x0

    .line 482
    if-eqz v12, :cond_5

    .line 484
    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 489
    :cond_5
    :goto_6
    if-eqz v16, :cond_4

    .line 491
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 492
    :catch_2
    move-exception v20

    goto :goto_4

    .line 482
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    :goto_7
    if-eqz v12, :cond_6

    .line 484
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 489
    :cond_6
    :goto_8
    if-eqz v16, :cond_7

    .line 491
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 494
    :cond_7
    :goto_9
    throw v20

    .line 457
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 504
    .end local v11    # "idCmd":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v16    # "p":Ljava/lang/Process;
    .end local v19    # "uid":Ljava/lang/String;
    :cond_9
    sget-object v20, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v21, "Could not determine the current UID using /usr/bin/id; attempting to bind at privileged ports."

    invoke-interface/range {v20 .. v21}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 506
    const-string v20, ".*(?:denied|not.*permitted).*"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 507
    .local v4, "PERMISSION_DENIED":Ljava/util/regex/Pattern;
    const/16 v9, 0x3ff

    .local v9, "i":I
    :goto_a
    if-lez v9, :cond_c

    .line 508
    const/16 v18, 0x0

    .line 510
    .local v18, "ss":Ljava/net/ServerSocket;
    :try_start_9
    new-instance v17, Ljava/net/ServerSocket;

    invoke-direct/range {v17 .. v17}, Ljava/net/ServerSocket;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 511
    .end local v18    # "ss":Ljava/net/ServerSocket;
    .local v17, "ss":Ljava/net/ServerSocket;
    const/16 v20, 0x1

    :try_start_a
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 512
    new-instance v20, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 513
    sget-object v20, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface/range {v20 .. v20}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 514
    sget-object v20, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v21, "UID: 0 (succeded to bind at port {})"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 516
    :cond_a
    const/16 v20, 0x1

    .line 529
    if-eqz v17, :cond_0

    .line 531
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/net/ServerSocket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    .line 532
    :catch_3
    move-exception v21

    goto/16 :goto_0

    .line 517
    .end local v17    # "ss":Ljava/net/ServerSocket;
    .restart local v18    # "ss":Ljava/net/ServerSocket;
    :catch_4
    move-exception v7

    move-object/from16 v17, v18

    .line 520
    .end local v18    # "ss":Ljava/net/ServerSocket;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v17    # "ss":Ljava/net/ServerSocket;
    :goto_b
    :try_start_c
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 521
    .local v15, "message":Ljava/lang/String;
    if-nez v15, :cond_b

    .line 522
    const-string v15, ""

    .line 524
    :cond_b
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 525
    invoke-virtual {v4, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v20

    if-eqz v20, :cond_d

    .line 529
    if-eqz v17, :cond_c

    .line 531
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/net/ServerSocket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 539
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v15    # "message":Ljava/lang/String;
    .end local v17    # "ss":Ljava/net/ServerSocket;
    :cond_c
    :goto_c
    sget-object v20, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v21, "UID: non-root (failed to bind at any privileged ports)"

    invoke-interface/range {v20 .. v21}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 540
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 529
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v15    # "message":Ljava/lang/String;
    .restart local v17    # "ss":Ljava/net/ServerSocket;
    :cond_d
    if-eqz v17, :cond_e

    .line 531
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/net/ServerSocket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 507
    :cond_e
    :goto_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 529
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v15    # "message":Ljava/lang/String;
    .end local v17    # "ss":Ljava/net/ServerSocket;
    .restart local v18    # "ss":Ljava/net/ServerSocket;
    :catchall_1
    move-exception v20

    move-object/from16 v17, v18

    .end local v18    # "ss":Ljava/net/ServerSocket;
    .restart local v17    # "ss":Ljava/net/ServerSocket;
    :goto_e
    if-eqz v17, :cond_f

    .line 531
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/net/ServerSocket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 534
    :cond_f
    :goto_f
    throw v20

    .line 474
    .end local v4    # "PERMISSION_DENIED":Ljava/util/regex/Pattern;
    .end local v9    # "i":I
    .end local v17    # "ss":Ljava/net/ServerSocket;
    .restart local v11    # "idCmd":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "p":Ljava/lang/Process;
    .restart local v19    # "uid":Ljava/lang/String;
    :catch_5
    move-exception v20

    goto/16 :goto_2

    .line 485
    .restart local v8    # "exitCode":I
    :catch_6
    move-exception v20

    goto/16 :goto_3

    .end local v8    # "exitCode":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v20

    goto/16 :goto_6

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v21

    goto/16 :goto_8

    .line 492
    :catch_9
    move-exception v21

    goto/16 :goto_9

    .line 532
    .end local v11    # "idCmd":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v16    # "p":Ljava/lang/Process;
    .end local v19    # "uid":Ljava/lang/String;
    .restart local v4    # "PERMISSION_DENIED":Ljava/util/regex/Pattern;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "i":I
    .restart local v15    # "message":Ljava/lang/String;
    .restart local v17    # "ss":Ljava/net/ServerSocket;
    :catch_a
    move-exception v20

    goto :goto_c

    :catch_b
    move-exception v20

    goto :goto_d

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v15    # "message":Ljava/lang/String;
    :catch_c
    move-exception v21

    goto :goto_f

    .line 529
    :catchall_2
    move-exception v20

    goto :goto_e

    .line 517
    :catch_d
    move-exception v7

    goto :goto_b

    .line 482
    .end local v4    # "PERMISSION_DENIED":Ljava/util/regex/Pattern;
    .end local v9    # "i":I
    .end local v17    # "ss":Ljava/net/ServerSocket;
    .restart local v11    # "idCmd":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "p":Ljava/lang/Process;
    .restart local v19    # "uid":Ljava/lang/String;
    :catchall_3
    move-exception v20

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 478
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_e
    move-exception v7

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "exitCode":I
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :cond_10
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public static isWindows()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->IS_WINDOWS:Z

    return v0
.end method

.method private static isWindows0()Z
    .locals 3

    .prologue
    .line 443
    const-string v1, "os.name"

    const-string v2, ""

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 444
    .local v0, "windows":Z
    if-eqz v0, :cond_0

    .line 445
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Platform: Windows"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 447
    :cond_0
    return v0
.end method

.method public static javaVersion()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lio/netty/util/internal/PlatformDependent;->JAVA_VERSION:I

    return v0
.end method

.method private static javaVersion0()I
    .locals 4

    .prologue
    .line 550
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    const/4 v0, 0x6

    .line 575
    .local v0, "javaVersion":I
    :goto_0
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    sget-object v1, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Java version: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    :cond_0
    return v0

    .line 556
    .end local v0    # "javaVersion":I
    :cond_1
    :try_start_0
    const-string v1, "java.time.Clock"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    const/16 v0, 0x8

    .restart local v0    # "javaVersion":I
    goto :goto_0

    .line 559
    .end local v0    # "javaVersion":I
    :catch_0
    move-exception v1

    .line 564
    :try_start_1
    const-string v1, "java.util.concurrent.LinkedTransferQueue"

    const/4 v2, 0x0

    const-class v3, Ljava/util/concurrent/BlockingQueue;

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    const/4 v0, 0x7

    .restart local v0    # "javaVersion":I
    goto :goto_0

    .line 567
    .end local v0    # "javaVersion":I
    :catch_1
    move-exception v1

    .line 571
    const/4 v0, 0x6

    .restart local v0    # "javaVersion":I
    goto :goto_0
.end method

.method public static maxDirectMemory()J
    .locals 2

    .prologue
    .line 154
    sget-wide v0, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY:J

    return-wide v0
.end method

.method private static maxDirectMemory0()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 627
    const-wide/16 v2, 0x0

    .line 630
    .local v2, "maxDirectMemory":J
    :try_start_0
    const-string v9, "sun.misc.VM"

    const/4 v10, 0x1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 631
    .local v8, "vmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "maxDirectMemory"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 632
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 637
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "vmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    cmp-long v9, v2, v12

    if-lez v9, :cond_0

    .line 684
    :goto_1
    return-wide v2

    .line 644
    :cond_0
    :try_start_1
    const-string v9, "java.lang.management.ManagementFactory"

    const/4 v10, 0x1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 646
    .local v4, "mgmtFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "java.lang.management.RuntimeMXBean"

    const/4 v10, 0x1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 649
    .local v6, "runtimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "getRuntimeMXBean"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 652
    .local v5, "runtime":Ljava/lang/Object;
    const-string v9, "getInputArguments"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 653
    .local v7, "vmArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 654
    sget-object v10, Lio/netty/util/internal/PlatformDependent;->MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 655
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_1

    .line 653
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 659
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 660
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 677
    .end local v0    # "i":I
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "mgmtFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "runtime":Ljava/lang/Object;
    .end local v6    # "runtimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "vmArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_3
    cmp-long v9, v2, v12

    if-gtz v9, :cond_3

    .line 678
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 679
    sget-object v9, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v10, "maxDirectMemory: {} bytes (maybe)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 662
    .restart local v0    # "i":I
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "mgmtFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "runtime":Ljava/lang/Object;
    .restart local v6    # "runtimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "vmArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_0
    const-wide/16 v10, 0x400

    mul-long/2addr v2, v10

    .line 663
    goto :goto_3

    .line 665
    :sswitch_1
    const-wide/32 v10, 0x100000

    mul-long/2addr v2, v10

    .line 666
    goto :goto_3

    .line 668
    :sswitch_2
    const-wide/32 v10, 0x40000000

    mul-long/2addr v2, v10

    goto :goto_3

    .line 681
    .end local v0    # "i":I
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "mgmtFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "runtime":Ljava/lang/Object;
    .end local v6    # "runtimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "vmArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v9, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v10, "maxDirectMemory: {} bytes"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 673
    :catch_0
    move-exception v9

    goto :goto_3

    .line 633
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_2
        0x4b -> :sswitch_0
        0x4d -> :sswitch_1
        0x67 -> :sswitch_2
        0x6b -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public static newAtomicIntegerFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1
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

    .prologue
    .line 370
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->newAtomicIntegerFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newAtomicLongFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1
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

    .prologue
    .line 387
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->newAtomicLongFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
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

    .prologue
    .line 353
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 214
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_USE_CHM_V8:Z

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>()V

    .line 217
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0
.end method

.method public static newConcurrentHashMap(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 225
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_USE_CHM_V8:Z

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(I)V

    .line 228
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    goto :goto_0
.end method

.method public static newConcurrentHashMap(IF)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "loadFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(IF)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 236
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_USE_CHM_V8:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(IF)V

    .line 239
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    goto :goto_0
.end method

.method public static newConcurrentHashMap(IFI)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "loadFactor"    # F
    .param p2, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(IFI)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 248
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_USE_CHM_V8:Z

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(IFI)V

    .line 251
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    goto :goto_0
.end method

.method public static newConcurrentHashMap(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->CAN_USE_CHM_V8:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(Ljava/util/Map;)V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static newMpscQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue;

    invoke-direct {v0}, Lio/netty/util/internal/MpscLinkedQueue;-><init>()V

    return-object v0
.end method

.method public static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 295
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static putByte(JB)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # B

    .prologue
    .line 319
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    .line 320
    return-void
.end method

.method public static putInt(JI)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # I

    .prologue
    .line 327
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putInt(JI)V

    .line 328
    return-void
.end method

.method public static putLong(JJ)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # J

    .prologue
    .line 331
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/PlatformDependent0;->putLong(JJ)V

    .line 332
    return-void
.end method

.method public static putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "address"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 315
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/PlatformDependent0;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 316
    return-void
.end method

.method public static putShort(JS)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "value"    # S

    .prologue
    .line 323
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putShort(JS)V

    .line 324
    return-void
.end method

.method public static throwException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 198
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->throwException0(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static throwException0(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    throw p0
.end method

.method public static tmpdir()Ljava/io/File;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lio/netty/util/internal/PlatformDependent;->TMPDIR:Ljava/io/File;

    return-object v0
.end method

.method private static tmpdir0()Ljava/io/File;
    .locals 4

    .prologue
    .line 717
    :try_start_0
    const-string v2, "io.netty.tmpdir"

    invoke-static {v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 718
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 719
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {}"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    :goto_0
    return-object v0

    .line 723
    :cond_0
    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_2

    .line 725
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {} (java.io.tmpdir)"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v2

    .line 763
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 764
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    const-string v2, "C:\\Windows\\Temp"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .restart local v0    # "f":Ljava/io/File;
    :goto_1
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to get the temporary directory; falling back to: {}"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 730
    :cond_2
    :try_start_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 731
    const-string v2, "TEMP"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_3

    .line 733
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {} (%TEMP%)"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 737
    :cond_3
    const-string v2, "USERPROFILE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "userprofile":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\AppData\\Local\\Temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_4

    .line 741
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {} (%USERPROFILE%\\AppData\\Local\\Temp)"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 745
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\Local Settings\\Temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_1

    .line 747
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {} (%USERPROFILE%\\Local Settings\\Temp)"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 752
    .end local v1    # "userprofile":Ljava/lang/String;
    :cond_5
    const-string v2, "TMPDIR"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->toDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_1

    .line 754
    sget-object v2, Lio/netty/util/internal/PlatformDependent;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.tmpdir: {} ($TMPDIR)"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 766
    :cond_6
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    const-string v2, "/tmp"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private static toDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 775
    if-nez p0, :cond_0

    move-object v0, v2

    .line 789
    :goto_0
    return-object v0

    .line 779
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 782
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 783
    goto :goto_0

    .line 787
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method
