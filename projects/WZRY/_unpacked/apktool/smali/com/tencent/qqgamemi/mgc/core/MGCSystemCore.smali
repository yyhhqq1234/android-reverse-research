.class public Lcom/tencent/qqgamemi/mgc/core/MGCSystemCore;
.super Ljava/lang/Object;
.source "MGCSystemCore.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MGCCore"

.field private static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqgamemi/mgc/core/MGCSystemCore;->isInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sget-boolean v0, Lcom/tencent/qqgamemi/mgc/core/MGCSystemCore;->isInit:Z

    if-eqz v0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqgamemi/mgc/core/MGCSystemCore;->isInit:Z

    .line 15
    invoke-static {p0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->create(Landroid/content/Context;)Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->init()V

    goto :goto_0
.end method
