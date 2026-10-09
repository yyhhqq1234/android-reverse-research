.class public Lcom/tencent/ui/ToolUitls;
.super Ljava/lang/Object;
.source "ToolUitls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppOps(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 22
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .local v6, "version":I
    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 25
    const-string v7, "appops"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 26
    .local v5, "object":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, "c":Ljava/lang/Class;
    const/4 v7, 0x3

    :try_start_0
    new-array v1, v7, [Ljava/lang/Class;

    .line 29
    .local v1, "cArg":[Ljava/lang/Class;
    const/4 v7, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v1, v7

    .line 30
    const/4 v7, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v1, v7

    .line 31
    const/4 v7, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v1, v7

    .line 32
    const-string v7, "checkOp"

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 34
    .local v3, "lMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    .line 35
    .local v4, "m":I
    if-nez v4, :cond_0

    move v7, v8

    .line 48
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cArg":[Ljava/lang/Class;
    .end local v3    # "lMethod":Ljava/lang/reflect/Method;
    .end local v4    # "m":I
    .end local v5    # "object":Ljava/lang/Object;
    :goto_0
    return v7

    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "cArg":[Ljava/lang/Class;
    .restart local v3    # "lMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "m":I
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_0
    move v7, v9

    .line 35
    goto :goto_0

    .line 37
    .end local v1    # "cArg":[Ljava/lang/Class;
    .end local v3    # "lMethod":Ljava/lang/reflect/Method;
    .end local v4    # "m":I
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "object":Ljava/lang/Object;
    :cond_1
    :goto_1
    move v7, v9

    .line 48
    goto :goto_0

    .line 39
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v5    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 41
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
