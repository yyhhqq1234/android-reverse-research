.class public Lcom/netease/cc/newlive/CCMLGlobal;
.super Ljava/lang/Object;
.source "CCMLGlobal.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/netease/cc/newlive/CCMLGlobal;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/netease/cc/newlive/CCMLGlobal;->b:Z

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/netease/cc/newlive/EngineConfig;)V
    .locals 0

    .line 17
    sget-object p1, Lcom/netease/cc/newlive/CCMLGlobal;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/netease/cc/newlive/CCMLGlobal;->a:Landroid/content/Context;

    .line 21
    :cond_0
    sget-boolean p0, Lcom/netease/cc/newlive/CCMLGlobal;->b:Z

    if-nez p0, :cond_1

    const-string p0, "newcclivevideo"

    .line 22
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 23
    sput-boolean p0, Lcom/netease/cc/newlive/CCMLGlobal;->b:Z

    :cond_1
    return-void
.end method

.method public static uninit()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/netease/cc/newlive/CCMLGlobal;->a:Landroid/content/Context;

    return-void
.end method
