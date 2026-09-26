.class Lcom/netease/pharos/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/MainActivity;


# direct methods
.method constructor <init>(Lcom/netease/pharos/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/MainActivity$6;->this$0:Lcom/netease/pharos/MainActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/MainActivity$6;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v1}, Lcom/netease/pharos/MainActivity;->access$1(Lcom/netease/pharos/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->init(Landroid/content/Context;)V

    .line 283
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->start()I

    .line 284
    return-void
.end method
