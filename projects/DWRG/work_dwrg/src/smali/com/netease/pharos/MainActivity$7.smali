.class Lcom/netease/pharos/MainActivity$7;
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
    iput-object p1, p0, Lcom/netease/pharos/MainActivity$7;->this$0:Lcom/netease/pharos/MainActivity;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/netease/pharos/location/NetAreaCore;->getInstances()Lcom/netease/pharos/location/NetAreaCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/location/NetAreaCore;->start()I

    .line 306
    return-void
.end method
