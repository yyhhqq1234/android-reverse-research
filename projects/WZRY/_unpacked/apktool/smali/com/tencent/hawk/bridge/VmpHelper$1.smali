.class Lcom/tencent/hawk/bridge/VmpHelper$1;
.super Ljava/lang/Object;
.source "VmpHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/hawk/bridge/VmpHelper;->registerTGPACallback(Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$engine:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

.field private final synthetic val$vmpcallback:Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/hawk/bridge/VmpHelper$1;->val$engine:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    iput-object p2, p0, Lcom/tencent/hawk/bridge/VmpHelper$1;->val$vmpcallback:Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "TGPA begin to callback : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, p3, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/tencent/hawk/bridge/VmpHelper$1;->val$engine:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    sget-object v5, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->UNRAL:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    if-ne v3, v5, :cond_2

    .line 395
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "changeSpecialEffects"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    aget-object v3, p3, v6

    if-nez v3, :cond_0

    const-string v3, "NULL"

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "param":Ljava/lang/String;
    invoke-static {v7, v6, v6, v6, v2}, Lcom/tencent/hawk/bridge/VmpHelper;->access$3(IIIILjava/lang/String;)V

    .line 398
    const/4 v1, 0x0

    .line 400
    .local v1, "intKey":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 405
    :goto_1
    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkNative;->processRomCallback(I)V

    move-object v3, v4

    .line 429
    .end local v1    # "intKey":I
    .end local v2    # "param":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 396
    :cond_0
    aget-object v3, p3, v6

    goto :goto_0

    .line 401
    .restart local v1    # "intKey":I
    .restart local v2    # "param":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intKey":I
    .end local v2    # "param":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 411
    :cond_2
    iget-object v3, p0, Lcom/tencent/hawk/bridge/VmpHelper$1;->val$vmpcallback:Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;

    if-nez v3, :cond_3

    .line 412
    const-string v3, "TGPACallback is null"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 413
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    .line 416
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "changeSpecialEffects"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 417
    aget-object v3, p3, v6

    if-nez v3, :cond_4

    const-string v3, "NULL"

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .restart local v2    # "param":Ljava/lang/String;
    invoke-static {v7, v6, v6, v6, v2}, Lcom/tencent/hawk/bridge/VmpHelper;->access$3(IIIILjava/lang/String;)V

    .line 420
    const/4 v1, 0x0

    .line 422
    .restart local v1    # "intKey":I
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 426
    :goto_4
    iget-object v3, p0, Lcom/tencent/hawk/bridge/VmpHelper$1;->val$vmpcallback:Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;

    invoke-interface {v3, v1}, Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;->changeSpecialEffects(I)V

    move-object v3, v4

    .line 427
    goto :goto_2

    .line 417
    .end local v1    # "intKey":I
    .end local v2    # "param":Ljava/lang/String;
    :cond_4
    aget-object v3, p3, v6

    goto :goto_3

    .line 423
    .restart local v1    # "intKey":I
    .restart local v2    # "param":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intKey":I
    .end local v2    # "param":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method
