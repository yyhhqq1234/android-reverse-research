.class Lcom/tencent/hawk/bridge/TApmAgent$Reflection;
.super Ljava/lang/Object;
.source "TApmAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/TApmAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reflection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-static {p0, p1, p2}, Lcom/tencent/hawk/bridge/TApmAgent$Reflection;->getStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/hawk/bridge/TApmAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 371
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 372
    .local v0, "localClass":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 373
    .local v2, "localField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 374
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 383
    .end local v0    # "localClass":Ljava/lang/Class;
    .end local v2    # "localField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v5

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "localClassNotFoundException":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 383
    .end local v1    # "localClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 377
    :catch_1
    move-exception v4

    .line 378
    .local v4, "localNoSuchFieldException":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 379
    .end local v4    # "localNoSuchFieldException":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    .line 380
    .local v3, "localIllegalAccessException":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;
    .param p2, "paramArrayOfObject"    # [Ljava/lang/Object;
    .param p3, "paramArrayOfClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 389
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 390
    .local v0, "localClass":Ljava/lang/Class;
    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 391
    .local v5, "localMethod":Ljava/lang/reflect/Method;
    if-nez v5, :cond_0

    .line 392
    const-string v8, "localMethod found error"

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 414
    .end local v0    # "localClass":Ljava/lang/Class;
    .end local v5    # "localMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v7

    .line 395
    .restart local v0    # "localClass":Ljava/lang/Class;
    .restart local v5    # "localMethod":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 396
    const/4 v8, 0x0

    invoke-virtual {v5, v8, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 397
    .local v7, "temp":Ljava/lang/Object;
    goto :goto_0

    .line 398
    .end local v0    # "localClass":Ljava/lang/Class;
    .end local v5    # "localMethod":Ljava/lang/reflect/Method;
    .end local v7    # "temp":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "localClassNotFoundException":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v1    # "localClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    .line 402
    .local v6, "localNoSuchMethodException":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v6    # "localNoSuchMethodException":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 405
    .local v4, "localInvocationTargetException":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v4    # "localInvocationTargetException":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    .line 408
    .local v3, "localIllegalAccessException":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v3    # "localIllegalAccessException":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 411
    .local v2, "localException":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
