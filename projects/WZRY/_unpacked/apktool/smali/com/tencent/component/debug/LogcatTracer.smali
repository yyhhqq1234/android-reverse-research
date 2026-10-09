.class public final Lcom/tencent/component/debug/LogcatTracer;
.super Lcom/tencent/component/debug/Tracer;
.source "LogcatTracer.java"


# static fields
.field public static final Instance:Lcom/tencent/component/debug/LogcatTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/tencent/component/debug/LogcatTracer;

    invoke-direct {v0}, Lcom/tencent/component/debug/LogcatTracer;-><init>()V

    sput-object v0, Lcom/tencent/component/debug/LogcatTracer;->Instance:Lcom/tencent/component/debug/LogcatTracer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/component/debug/Tracer;-><init>()V

    return-void
.end method


# virtual methods
.method protected doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "time"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "msg"    # Ljava/lang/String;
    .param p7, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    sparse-switch p1, :sswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 32
    :sswitch_0
    invoke-static {p5, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    :sswitch_1
    invoke-static {p5, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 42
    :sswitch_2
    invoke-static {p5, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 47
    :sswitch_3
    invoke-static {p5, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    :sswitch_4
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    :sswitch_5
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 28
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method protected doTrace(Ljava/lang/String;)V
    .locals 1
    .param p1, "formattedTrace"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, ""

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
