.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->requestPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field final synthetic val$audioPermission:Z

.field final synthetic val$storagePermission:Z


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iput-boolean p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->val$audioPermission:Z

    iput-boolean p3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->val$storagePermission:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->val$audioPermission:Z

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$500(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    iget-boolean v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->val$storagePermission:Z

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$500(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 447
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$500(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0x69

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRequestPermissions(Z)V

    goto :goto_0
.end method
