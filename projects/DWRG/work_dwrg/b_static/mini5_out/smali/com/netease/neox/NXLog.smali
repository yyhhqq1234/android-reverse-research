.class public final Lcom/netease/neox/NXLog;
.super Ljava/lang/Object;
.source "NXLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native NativeLog(ILjava/lang/String;)V
.end method

.method private static native NativeLogError(Ljava/lang/String;)V
.end method

.method private static native NativeLogWarning(Ljava/lang/String;)V
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/netease/neox/NXLog;->NativeLogError(Ljava/lang/String;)V

    return-void
.end method

.method public static i(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/netease/neox/NXLog;->NativeLog(ILjava/lang/String;)V

    return-void
.end method

.method public static logException(Ljava/lang/Exception;)V
    .locals 2

    .line 27
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 28
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/netease/neox/NXLog;->NativeLogWarning(Ljava/lang/String;)V

    return-void
.end method
