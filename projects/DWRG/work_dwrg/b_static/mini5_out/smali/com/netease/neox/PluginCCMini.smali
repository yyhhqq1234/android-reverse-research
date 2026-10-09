.class public Lcom/netease/neox/PluginCCMini;
.super Lcom/netease/neox/PluginBase;
.source "PluginCCMini.java"


# instance fields
.field private m_activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/netease/neox/PluginBase;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 27
    invoke-static {}, Lcom/netease/cc/voice/CCVoiceEngine;->CloseCCMini()I

    return-void
.end method

.method public control(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p1, p2}, Lcom/netease/cc/voice/CCVoiceEngine;->ControlMini(Ljava/lang/String;I)Lcom/netease/cc/voice/JNIRetObject;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/cc/voice/JNIRetObject;->result:Ljava/lang/String;

    return-object p1
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lcom/netease/cc/voice/CCVoiceEngine;->GetJsonData()Lcom/netease/cc/voice/JNIRetObject;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/cc/voice/JNIRetObject;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "ccmini"

    return-object v0
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/netease/neox/PluginCCMini;->m_activity:Landroid/app/Activity;

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/cc/voice/CCVoiceEngine;->Load(Landroid/content/Context;)V

    return-void
.end method

.method public start()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/netease/neox/PluginCCMini;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/cc/voice/CCVoiceEngine;->StartCCMini(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method
