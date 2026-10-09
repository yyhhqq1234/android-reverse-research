.class public final Lcom/netease/mobile/link/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/netease/mobile/link/c3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mobile/link/c3;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/netease/mobile/link/c3;-><init>(I)V

    .line 2
    sput-object v0, Lcom/netease/mobile/link/d3;->a:Lcom/netease/mobile/link/c3;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3
    sget-object v0, Lcom/netease/mobile/link/d3;->a:Lcom/netease/mobile/link/c3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p0, v4, :cond_3

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    const-string v5, "WARN"

    goto :goto_0

    :cond_1
    const-string v5, "INFO"

    goto :goto_0

    :cond_2
    const-string v5, "DEBUG"

    goto :goto_0

    :cond_3
    const-string v5, "VERBOSE"

    :goto_0
    const/4 v6, 0x0

    aput-object p1, v1, v6

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v7, 0x6

    aget-object p1, p1, v7

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v6

    aput-object p1, v7, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v0

    aput-object p2, v7, v3

    const-string p1, "[%s-%s]-#%s:%s"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    if-eq p0, v4, :cond_7

    if-eq p0, v0, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    goto :goto_1

    :cond_4
    aget-object p0, v1, v6

    aget-object p1, v1, v4

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    aget-object p0, v1, v6

    aget-object p1, v1, v4

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    aget-object p0, v1, v6

    aget-object p1, v1, v4

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    aget-object p0, v1, v6

    aget-object p1, v1, v4

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mobile/link/d3;->a:Lcom/netease/mobile/link/c3;

    iget v0, v0, Lcom/netease/mobile/link/c3;->a:I

    const/4 v1, 0x2

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p0, p1}, Lcom/netease/mobile/link/d3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/netease/mobile/link/d3;->a:Lcom/netease/mobile/link/c3;

    iget v0, v0, Lcom/netease/mobile/link/c3;->a:I

    const/4 v1, 0x4

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "MobileLink"

    invoke-static {v0, v1, p0}, Lcom/netease/mobile/link/d3;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
