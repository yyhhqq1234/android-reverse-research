.class Lcom/netease/pushclient/PushManager$1;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pushclient/PushManager;->onRequestPermissionsGranted(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 255
    invoke-static {}, Lcom/netease/pushclient/PushManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "permission alert dialog clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    invoke-static {}, Lcom/netease/pushclient/PushManager;->access$1()V

    .line 258
    invoke-static {}, Lcom/netease/pushclient/PushManager;->access$2()Lcom/netease/pushclient/PushManager$PushManagerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/pushclient/PushManager$PushManagerCallback;->onInitSuccess()V

    .line 259
    return-void
.end method
