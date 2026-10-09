.class Lcom/netease/neox/PluginMedia$3;
.super Ljava/lang/Thread;
.source "PluginMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginMedia;->saveAlbum(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginMedia;

.field final synthetic val$extension:Ljava/lang/String;

.field final synthetic val$isVideo:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginMedia;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/netease/neox/PluginMedia$3;->this$0:Lcom/netease/neox/PluginMedia;

    iput-boolean p2, p0, Lcom/netease/neox/PluginMedia$3;->val$isVideo:Z

    iput-object p3, p0, Lcom/netease/neox/PluginMedia$3;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/neox/PluginMedia$3;->val$extension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 288
    iget-boolean v0, p0, Lcom/netease/neox/PluginMedia$3;->val$isVideo:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/netease/neox/PluginMedia$3;->this$0:Lcom/netease/neox/PluginMedia;

    iget-object v1, p0, Lcom/netease/neox/PluginMedia$3;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/neox/PluginMedia$3;->val$extension:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/neox/PluginMedia;->access$600(Lcom/netease/neox/PluginMedia;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/PluginMedia$3;->this$0:Lcom/netease/neox/PluginMedia;

    iget-object v1, p0, Lcom/netease/neox/PluginMedia$3;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/neox/PluginMedia;->access$700(Lcom/netease/neox/PluginMedia;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
