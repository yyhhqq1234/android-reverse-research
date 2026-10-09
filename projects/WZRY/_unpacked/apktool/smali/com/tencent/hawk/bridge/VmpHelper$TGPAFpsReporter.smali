.class Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;
.super Ljava/lang/Object;
.source "VmpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/VmpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TGPAFpsReporter"
.end annotation


# instance fields
.field private mFpsReportMethod:Ljava/lang/reflect/Method;

.field private mPfaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mPfaInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 7
    .param p2, "pfaInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pfaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object v6, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mPfaClass:Ljava/lang/Class;

    .line 177
    iput-object v6, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mPfaInstance:Ljava/lang/Object;

    .line 178
    iput-object v6, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mFpsReportMethod:Ljava/lang/reflect/Method;

    .line 181
    iput-object p1, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mPfaClass:Ljava/lang/Class;

    .line 182
    iput-object p2, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mPfaInstance:Ljava/lang/Object;

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mPfaClass:Ljava/lang/Class;

    const-string/jumbo v2, "updateGameInfo"

    .line 185
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 184
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mFpsReportMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find setFpsDataReport "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 189
    iput-object v6, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mFpsReportMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 195
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->access$0()Z

    move-result v7

    if-nez v7, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 200
    .local v0, "consecutiveZeros":I
    iget-object v7, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mFpsReportMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_4

    .line 201
    const-string v7, "FpsReportMethod is null"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    sget-boolean v7, Lcom/tencent/hawk/bridge/CC;->isTApmEnabled:Z

    if-eqz v7, :cond_0

    .line 207
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->access$1()I

    move-result v7

    if-ne v7, v14, :cond_3

    .line 208
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->access$2()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 210
    :try_start_0
    const-string v7, "VMP Report FPS sleep"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 211
    :goto_1
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->access$1()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v7, v14, :cond_5

    .line 217
    :try_start_1
    const-string v7, "VMP Report FPS thread awake"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 208
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_3
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->getFrames()I

    move-result v6

    .line 222
    .local v6, "preFrames":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 224
    .local v8, "preMills":J
    const-wide/16 v10, 0x1388

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :goto_2
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->getFrames()I

    move-result v3

    .line 231
    .local v3, "postFrames":I
    if-ne v6, v3, :cond_6

    .line 232
    add-int/lit8 v0, v0, 0x1

    .line 237
    :goto_3
    const/16 v7, 0xa

    if-gt v0, v7, :cond_0

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 242
    .local v4, "postMills":J
    sub-long v10, v4, v8

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_7

    .line 243
    sub-int v7, v3, v6

    int-to-float v7, v7

    sub-long v10, v4, v8

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    div-float v2, v7, v10

    .line 244
    .local v2, "fps":F
    sub-int v7, v3, v6

    if-lez v7, :cond_4

    .line 246
    :try_start_3
    iget-object v7, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mFpsReportMethod:Ljava/lang/reflect/Method;

    iget-object v10, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mPfaInstance:Ljava/lang/Object;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "FPS"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "begin to ayncUploadFPS :"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 204
    .end local v2    # "fps":F
    .end local v3    # "postFrames":I
    .end local v4    # "postMills":J
    .end local v6    # "preFrames":I
    .end local v8    # "preMills":J
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;->mFpsReportMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_2

    goto/16 :goto_0

    .line 212
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->access$2()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 215
    monitor-exit v10

    goto/16 :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 225
    .restart local v6    # "preFrames":I
    .restart local v8    # "preMills":J
    :catch_1
    move-exception v1

    .line 226
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 234
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "postFrames":I
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 247
    .restart local v2    # "fps":F
    .restart local v4    # "postMills":J
    :catch_2
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 250
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 253
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 260
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "fps":F
    :cond_7
    const-string v7, "TGPAFpsReporter time error"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_4
.end method
