.class public Lcom/tencent/qt/base/net/PLog;
.super Ljava/lang/Object;
.source "PLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qt/base/net/PLog$StoreMode;,
        Lcom/tencent/qt/base/net/PLog$TraceMode;
    }
.end annotation


# static fields
.field public static final LL_DEBUG:I = 0x1

.field public static final LL_ERROR:I = 0x4

.field public static final LL_INFO:I = 0x2

.field public static final LL_VERBOSE:I = 0x0

.field public static final LL_WARN:I = 0x3

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qt/base/net/PLog;->debug:Z

    .line 34
    invoke-static {}, Lcom/tencent/qt/base/net/GlobalPref;->getInstant()Lcom/tencent/qt/base/net/GlobalPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qt/base/net/GlobalPref;->loadLibary()V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static varargs buildWholeMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 131
    sget-boolean v1, Lcom/tencent/qt/base/net/PLog;->debug:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-static {p1, p2}, Lcom/tencent/qt/base/net/PLog;->buildWholeMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1, p0, v0}, Lcom/tencent/qt/base/net/PLog;->native_log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local v0    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 164
    invoke-static {p1, p2}, Lcom/tencent/qt/base/net/PLog;->buildWholeMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1, p0, v0}, Lcom/tencent/qt/base/net/PLog;->native_log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    sget-boolean v1, Lcom/tencent/qt/base/net/PLog;->debug:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-static {p1}, Lcom/tencent/qt/base/net/PLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/tencent/qt/base/net/PLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected static enableLog(ZI)V
    .locals 1
    .param p0, "d"    # Z
    .param p1, "level"    # I

    .prologue
    .line 39
    sput-boolean p0, Lcom/tencent/qt/base/net/PLog;->debug:Z

    .line 43
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/qt/base/net/PLog;->native_debug(ZI)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 181
    const-string v2, ""

    .line 186
    :goto_0
    return-object v2

    .line 183
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 184
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 185
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    sget-boolean v1, Lcom/tencent/qt/base/net/PLog;->debug:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-static {p1, p2}, Lcom/tencent/qt/base/net/PLog;->buildWholeMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1, p0, v0}, Lcom/tencent/qt/base/net/PLog;->native_log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v0    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native native_debug(ZI)V
.end method

.method private static native native_log(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native native_trace(ILjava/lang/String;)Z
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 198
    sget-boolean v0, Lcom/tencent/qt/base/net/PLog;->debug:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "VideoException"

    invoke-static {v0, p0}, Lcom/tencent/qt/base/net/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected static trace(Lcom/tencent/qt/base/net/PLog$TraceMode;Lcom/tencent/qt/base/net/PLog$StoreMode;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mode"    # Lcom/tencent/qt/base/net/PLog$TraceMode;
    .param p1, "sm"    # Lcom/tencent/qt/base/net/PLog$StoreMode;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-boolean v4, Lcom/tencent/qt/base/net/PLog;->debug:Z

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "you should enable log before modifing trace mode"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_0
    sget-object v4, Lcom/tencent/qt/base/net/PLog$TraceMode;->offline:Lcom/tencent/qt/base/net/PLog$TraceMode;

    invoke-virtual {p0, v4}, Lcom/tencent/qt/base/net/PLog$TraceMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/tencent/qt/base/net/PLog$TraceMode;->all:Lcom/tencent/qt/base/net/PLog$TraceMode;

    invoke-virtual {p0, v4}, Lcom/tencent/qt/base/net/PLog$TraceMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 57
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "path should not be null for offline and all mode"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    .line 62
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 63
    .local v0, "b":Z
    if-nez v0, :cond_4

    .line 64
    const/4 v3, 0x0

    .line 83
    .end local v0    # "b":Z
    .end local v1    # "dir":Ljava/io/File;
    :goto_0
    return v3

    .line 68
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/qt/base/net/PLog$StoreMode;->ordinal()I

    move-result v2

    .line 69
    .local v2, "policy":I
    shl-int/lit8 v2, v2, 0x4

    .line 70
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/PLog$TraceMode;->ordinal()I

    move-result v4

    or-int/2addr v2, v4

    .line 72
    const/4 v3, 0x0

    .line 76
    .local v3, "ret":Z
    :try_start_0
    invoke-static {v2, p2}, Lcom/tencent/qt/base/net/PLog;->native_trace(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 97
    sget-boolean v1, Lcom/tencent/qt/base/net/PLog;->debug:Z

    if-eqz v1, :cond_0

    .line 98
    invoke-static {p1, p2}, Lcom/tencent/qt/base/net/PLog;->buildWholeMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0, v0}, Lcom/tencent/qt/base/net/PLog;->native_log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v0    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 148
    invoke-static {p1, p2}, Lcom/tencent/qt/base/net/PLog;->buildWholeMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1, p0, v0}, Lcom/tencent/qt/base/net/PLog;->native_log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method
