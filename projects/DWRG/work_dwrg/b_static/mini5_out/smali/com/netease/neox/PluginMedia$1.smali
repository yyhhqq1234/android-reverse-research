.class Lcom/netease/neox/PluginMedia$1;
.super Ljava/lang/Object;
.source "PluginMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginMedia;->pickVideo()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginMedia;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginMedia;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/netease/neox/PluginMedia$1;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/netease/neox/PluginMedia$1;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->access$100(Lcom/netease/neox/PluginMedia;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/netease/neox/PluginMedia;->access$000()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 199
    invoke-static {}, Lcom/netease/neox/PluginMedia;->nativeOnPickVideoFailed()V

    :goto_0
    return-void
.end method
