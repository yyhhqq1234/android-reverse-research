.class Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;
.super Ljava/lang/Object;
.source "LeafServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/service/LeafServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionInfo"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field deathMonitor:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/component/plugin/service/LeafServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/component/plugin/service/LeafServiceManager$1;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;-><init>()V

    return-void
.end method
