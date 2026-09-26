.class public Lio/netty/util/internal/logging/Slf4JLoggerFactory;
.super Lio/netty/util/internal/logging/InternalLoggerFactory;
.source "Slf4JLoggerFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;-><init>()V

    .line 33
    return-void
.end method

.method constructor <init>(Z)V
    .locals 7
    .param p1, "failIfNOP"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;-><init>()V

    .line 36
    sget-boolean v3, Lio/netty/util/internal/logging/Slf4JLoggerFactory;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 43
    .local v2, "err":Ljava/io/PrintStream;
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Lio/netty/util/internal/logging/Slf4JLoggerFactory$1;

    invoke-direct {v4, p0, v0}, Lio/netty/util/internal/logging/Slf4JLoggerFactory$1;-><init>(Lio/netty/util/internal/logging/Slf4JLoggerFactory;Ljava/lang/StringBuffer;)V

    const/4 v5, 0x1

    const-string v6, "US-ASCII"

    invoke-direct {v3, v4, v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v3

    instance-of v3, v3, Lorg/slf4j/helpers/NOPLoggerFactory;

    if-eqz v3, :cond_1

    .line 55
    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception v3

    invoke-static {v2}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    throw v3

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 57
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-static {v2}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 63
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lio/netty/util/internal/logging/Slf4JLogger;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/logging/Slf4JLogger;-><init>(Lorg/slf4j/Logger;)V

    return-object v0
.end method
