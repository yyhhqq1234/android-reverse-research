.class Lcom/netease/neox/PluginMedia$MyTranscodeCallback;
.super Ljava/lang/Object;
.source "PluginMedia.java"

# interfaces
.implements Lcom/netease/cc/transcode/Transcode$TranscodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/neox/PluginMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTranscodeCallback"
.end annotation


# instance fields
.field private m_bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/netease/neox/PluginMedia;


# direct methods
.method public constructor <init>(Lcom/netease/neox/PluginMedia;Landroid/os/Bundle;)V
    .locals 1

    .line 467
    iput-object p1, p0, Lcom/netease/neox/PluginMedia$MyTranscodeCallback;->this$0:Lcom/netease/neox/PluginMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Lcom/netease/neox/PluginMedia$MyTranscodeCallback;->m_bundle:Landroid/os/Bundle;

    .line 469
    const-string p1, "IsSuccessful"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/netease/neox/PluginMedia$MyTranscodeCallback;->m_bundle:Landroid/os/Bundle;

    const-string v1, "IsSuccessful"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/netease/neox/PluginMedia$MyTranscodeCallback;->m_bundle:Landroid/os/Bundle;

    const-string v1, "IsSuccessful"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
