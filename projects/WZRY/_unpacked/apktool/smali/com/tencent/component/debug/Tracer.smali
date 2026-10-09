.class public abstract Lcom/tencent/component/debug/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# instance fields
.field private volatile enabled:Z

.field private traceFormat:Lcom/tencent/component/debug/TraceFormat;

.field private volatile traceLevel:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/component/debug/TraceFormat;->DEFAULT:Lcom/tencent/component/debug/TraceFormat;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/component/debug/Tracer;-><init>(IZLcom/tencent/component/debug/TraceFormat;)V

    .line 29
    return-void
.end method

.method public constructor <init>(IZLcom/tencent/component/debug/TraceFormat;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "enable"    # Z
    .param p3, "format"    # Lcom/tencent/component/debug/TraceFormat;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x3f

    iput v0, p0, Lcom/tencent/component/debug/Tracer;->traceLevel:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/debug/Tracer;->enabled:Z

    .line 21
    sget-object v0, Lcom/tencent/component/debug/TraceFormat;->DEFAULT:Lcom/tencent/component/debug/TraceFormat;

    iput-object v0, p0, Lcom/tencent/component/debug/Tracer;->traceFormat:Lcom/tencent/component/debug/TraceFormat;

    .line 41
    invoke-virtual {p0, p1}, Lcom/tencent/component/debug/Tracer;->setTraceLevel(I)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/tencent/component/debug/Tracer;->setEnabled(Z)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/tencent/component/debug/Tracer;->setTraceFormat(Lcom/tencent/component/debug/TraceFormat;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected abstract doTrace(Ljava/lang/String;)V
.end method

.method public getTraceFormat()Lcom/tencent/component/debug/TraceFormat;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/component/debug/Tracer;->traceFormat:Lcom/tencent/component/debug/TraceFormat;

    return-object v0
.end method

.method public getTraceLevel()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/tencent/component/debug/Tracer;->traceLevel:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/tencent/component/debug/Tracer;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/tencent/component/debug/Tracer;->enabled:Z

    .line 182
    return-void
.end method

.method public setTraceFormat(Lcom/tencent/component/debug/TraceFormat;)V
    .locals 0
    .param p1, "traceFormat"    # Lcom/tencent/component/debug/TraceFormat;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tencent/component/debug/Tracer;->traceFormat:Lcom/tencent/component/debug/TraceFormat;

    .line 205
    return-void
.end method

.method public setTraceLevel(I)V
    .locals 0
    .param p1, "traceLevel"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/tencent/component/debug/Tracer;->traceLevel:I

    .line 159
    return-void
.end method

.method public trace(ILjava/lang/String;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "formattedTrace"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/tencent/component/debug/Tracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget v0, p0, Lcom/tencent/component/debug/Tracer;->traceLevel:I

    invoke-static {v0, p1}, Lcom/tencent/component/utils/BitUtils;->has(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p2}, Lcom/tencent/component/debug/Tracer;->doTrace(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "time"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "msg"    # Ljava/lang/String;
    .param p7, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/tencent/component/debug/Tracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/tencent/component/debug/Tracer;->traceLevel:I

    invoke-static {v0, p1}, Lcom/tencent/component/utils/BitUtils;->has(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual/range {p0 .. p7}, Lcom/tencent/component/debug/Tracer;->doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    return-void
.end method
