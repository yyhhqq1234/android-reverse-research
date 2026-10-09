.class Lcom/netease/neox/PluginMedia$2;
.super Ljava/lang/Object;
.source "PluginMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginMedia;->captureVideo()Z
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

    .line 215
    iput-object p1, p0, Lcom/netease/neox/PluginMedia$2;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/netease/neox/PluginMedia$2;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->access$200(Lcom/netease/neox/PluginMedia;)I

    move-result v1

    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/netease/neox/PluginMedia$2;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->access$300(Lcom/netease/neox/PluginMedia;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 221
    iget-object v1, p0, Lcom/netease/neox/PluginMedia$2;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->access$300(Lcom/netease/neox/PluginMedia;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v5

    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/netease/neox/PluginMedia$2;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->access$400(Lcom/netease/neox/PluginMedia;)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 224
    iget-object v1, p0, Lcom/netease/neox/PluginMedia$2;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->access$400(Lcom/netease/neox/PluginMedia;)J

    move-result-wide v1

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netease/neox/PluginMedia$2;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-static {v1}, Lcom/netease/neox/PluginMedia;->access$100(Lcom/netease/neox/PluginMedia;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/netease/neox/PluginMedia;->access$500()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 230
    invoke-static {}, Lcom/netease/neox/PluginMedia;->nativeOnCaptureVideoFailed()V

    :goto_0
    return-void
.end method
