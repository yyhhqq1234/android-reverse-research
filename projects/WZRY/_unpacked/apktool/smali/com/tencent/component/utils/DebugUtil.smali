.class public Lcom/tencent/component/utils/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static sDebuggable:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/component/utils/DebugUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v1, Lcom/tencent/component/utils/DebugUtil;->sDebuggable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 24
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/tencent/component/utils/DebugUtil;->sDebuggable:Ljava/lang/Boolean;

    .line 26
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    sget-object v1, Lcom/tencent/component/utils/DebugUtil;->sDebuggable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 24
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDebuggable(Z)V
    .locals 1
    .param p0, "debuggable"    # Z

    .prologue
    .line 30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/component/utils/DebugUtil;->sDebuggable:Ljava/lang/Boolean;

    .line 31
    return-void
.end method
