.class Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;
.super Ljava/lang/Object;
.source "TraeAudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->sendResBroadcast(Landroid/content/Intent;Ljava/util/HashMap;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3933
    iput-object p1, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->e:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iput-object p2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->b:Ljava/lang/Long;

    iput-object p4, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->c:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3936
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->a:Landroid/content/Intent;

    const-string v1, "com.tencent.sharp.ACTION_TRAEAUDIOMANAGER_RES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3937
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->a:Landroid/content/Intent;

    const-string v1, "PARAM_SESSIONID"

    iget-object v2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3938
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->a:Landroid/content/Intent;

    const-string v1, "PARAM_OPERATION"

    iget-object v2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3939
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->a:Landroid/content/Intent;

    const-string v1, "PARAM_RES_ERRCODE"

    iget v2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3940
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->e:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iget-object v0, v0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3941
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->e:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iget-object v0, v0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3942
    :cond_0
    return-void
.end method
