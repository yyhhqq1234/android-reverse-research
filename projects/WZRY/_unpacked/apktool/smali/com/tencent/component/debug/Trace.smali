.class public Lcom/tencent/component/debug/Trace;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Lcom/tencent/component/debug/TraceLevel;


# static fields
.field private static volatile systemTracer:Lcom/tencent/component/debug/Tracer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/tencent/component/debug/LogcatTracer;

    invoke-direct {v0}, Lcom/tencent/component/debug/LogcatTracer;-><init>()V

    sput-object v0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/debug/Trace;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    if-eqz v0, :cond_0

    .line 47
    sget-object v1, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/debug/Trace;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    sget-object v0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    if-eqz v0, :cond_0

    .line 86
    sget-object v1, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    const/16 v2, 0x10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static getSystemTracer()Lcom/tencent/component/debug/Tracer;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/debug/Trace;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    sget-object v0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    const/4 v2, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static setSystemTracer(Lcom/tencent/component/debug/Tracer;)V
    .locals 0
    .param p0, "tracer"    # Lcom/tencent/component/debug/Tracer;

    .prologue
    .line 113
    sput-object p0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    .line 114
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/debug/Trace;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    sget-object v0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    if-eqz v0, :cond_0

    .line 34
    sget-object v1, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/debug/Trace;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    sget-object v0, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    if-eqz v0, :cond_0

    .line 73
    sget-object v1, Lcom/tencent/component/debug/Trace;->systemTracer:Lcom/tencent/component/debug/Tracer;

    const/16 v2, 0x8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    return-void
.end method
