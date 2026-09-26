.class Lcom/netease/pharos/MainActivity$4;
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
    iput-object p1, p0, Lcom/netease/pharos/MainActivity$4;->this$0:Lcom/netease/pharos/MainActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 254
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "52.52.108.248"

    const/16 v3, 0x2329

    const/16 v4, 0xa

    const/16 v5, 0x320

    const/16 v6, 0x800

    iget-object v7, p0, Lcom/netease/pharos/MainActivity$4;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v7}, Lcom/netease/pharos/MainActivity;->access$0(Lcom/netease/pharos/MainActivity;)Lcom/netease/pharos/link/LinkCheckListener;

    move-result-object v7

    const/4 v8, 0x0

    move-object v10, v9

    move-object v11, v9

    invoke-virtual/range {v0 .. v11}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/link/NetmonProxy;->start()I

    .line 258
    return-void
.end method
