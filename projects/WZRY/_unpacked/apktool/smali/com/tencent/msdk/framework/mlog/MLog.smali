.class public Lcom/tencent/msdk/framework/mlog/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field private static final DEFAOULT_TAG:Ljava/lang/String; = "MSDK"

.field private static final STACK_TRACE_DEEP:I = 0x5

.field private static jni_lineNumber:I

.field private static jni_methodName:Ljava/lang/String;

.field private static jni_shortClsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->tryLoadSo()V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native LOG_DEBUG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native LOG_ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native LOG_FALAL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native LOG_INFO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native LOG_VERBOSE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native LOG_WARN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->initJniLogInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "MSDK"

    sget-object v1, Lcom/tencent/msdk/framework/mlog/MLog;->jni_shortClsName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/framework/mlog/MLog;->jni_methodName:Ljava/lang/String;

    sget v3, Lcom/tencent/msdk/framework/mlog/MLog;->jni_lineNumber:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/tencent/msdk/framework/mlog/MLog;->LOG_DEBUG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->initJniLogInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "MSDK"

    sget-object v1, Lcom/tencent/msdk/framework/mlog/MLog;->jni_shortClsName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/framework/mlog/MLog;->jni_methodName:Ljava/lang/String;

    sget v3, Lcom/tencent/msdk/framework/mlog/MLog;->jni_lineNumber:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/tencent/msdk/framework/mlog/MLog;->LOG_ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->initJniLogInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "MSDK"

    sget-object v1, Lcom/tencent/msdk/framework/mlog/MLog;->jni_shortClsName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/framework/mlog/MLog;->jni_methodName:Ljava/lang/String;

    sget v3, Lcom/tencent/msdk/framework/mlog/MLog;->jni_lineNumber:I

    invoke-static {p0}, Lcom/tencent/msdk/framework/mlog/MLog;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/msdk/framework/mlog/MLog;->LOG_ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method private static getMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->getTraceInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 156
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 157
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getTraceInfo(I)Ljava/lang/String;
    .locals 12
    .param p0, "index"    # I

    .prologue
    .line 162
    const-string v6, ""

    .line 163
    .local v6, "traceInfo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 165
    .local v9, "traces":[Ljava/lang/StackTraceElement;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 171
    if-eqz v9, :cond_0

    if-ltz p0, :cond_0

    array-length v10, v9

    if-lt p0, v10, :cond_1

    :cond_0
    move-object v7, v6

    .end local v6    # "traceInfo":Ljava/lang/String;
    .local v7, "traceInfo":Ljava/lang/String;
    move-object v8, v6

    .line 185
    .end local v7    # "traceInfo":Ljava/lang/String;
    .local v8, "traceInfo":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 166
    .end local v8    # "traceInfo":Ljava/lang/String;
    .restart local v6    # "traceInfo":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    move-object v7, v6

    .end local v6    # "traceInfo":Ljava/lang/String;
    .restart local v7    # "traceInfo":Ljava/lang/String;
    move-object v8, v6

    .line 168
    .end local v7    # "traceInfo":Ljava/lang/String;
    .restart local v8    # "traceInfo":Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "traceInfo":Ljava/lang/String;
    .restart local v6    # "traceInfo":Ljava/lang/String;
    :cond_1
    aget-object v10, v9, p0

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "clsName":Ljava/lang/String;
    aget-object v10, v9, p0

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "methodName":Ljava/lang/String;
    aget-object v10, v9, p0

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    .line 177
    .local v3, "lineNumber":I
    const-string v5, ""

    .line 178
    .local v5, "shortClsName":Ljava/lang/String;
    const/16 v10, 0x2e

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 179
    .local v1, "dot":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    .line 180
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .end local v6    # "traceInfo":Ljava/lang/String;
    .restart local v7    # "traceInfo":Ljava/lang/String;
    move-object v8, v6

    .line 185
    .end local v7    # "traceInfo":Ljava/lang/String;
    .restart local v8    # "traceInfo":Ljava/lang/String;
    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->initJniLogInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "MSDK"

    sget-object v1, Lcom/tencent/msdk/framework/mlog/MLog;->jni_shortClsName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/framework/mlog/MLog;->jni_methodName:Ljava/lang/String;

    sget v3, Lcom/tencent/msdk/framework/mlog/MLog;->jni_lineNumber:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/tencent/msdk/framework/mlog/MLog;->LOG_INFO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static initJniLogInfo(I)Z
    .locals 6
    .param p0, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 45
    const/4 v3, 0x0

    .line 48
    .local v3, "traces":[Ljava/lang/StackTraceElement;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 55
    if-eqz v3, :cond_0

    if-ltz p0, :cond_0

    array-length v5, v3

    if-lt p0, v5, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v4

    .line 50
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    aget-object v4, v3, p0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "clsName":Ljava/lang/String;
    aget-object v4, v3, p0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/msdk/framework/mlog/MLog;->jni_methodName:Ljava/lang/String;

    .line 62
    aget-object v4, v3, p0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    sput v4, Lcom/tencent/msdk/framework/mlog/MLog;->jni_lineNumber:I

    .line 63
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 64
    .local v1, "dot":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 66
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/msdk/framework/mlog/MLog;->jni_shortClsName:Ljava/lang/String;

    .line 69
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static intentToString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "MLog Intent: \n"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 131
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, [B

    if-eqz v6, :cond_1

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 134
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 133
    invoke-static {v7}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_1
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    .line 151
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 135
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 142
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(unknown type)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->initJniLogInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "MSDK"

    sget-object v1, Lcom/tencent/msdk/framework/mlog/MLog;->jni_shortClsName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/framework/mlog/MLog;->jni_methodName:Ljava/lang/String;

    sget v3, Lcom/tencent/msdk/framework/mlog/MLog;->jni_lineNumber:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/tencent/msdk/framework/mlog/MLog;->LOG_WARN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->initJniLogInfo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "MSDK"

    sget-object v1, Lcom/tencent/msdk/framework/mlog/MLog;->jni_shortClsName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/framework/mlog/MLog;->jni_methodName:Ljava/lang/String;

    sget v3, Lcom/tencent/msdk/framework/mlog/MLog;->jni_lineNumber:I

    invoke-static {p0}, Lcom/tencent/msdk/framework/mlog/MLog;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/msdk/framework/mlog/MLog;->LOG_WARN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method
