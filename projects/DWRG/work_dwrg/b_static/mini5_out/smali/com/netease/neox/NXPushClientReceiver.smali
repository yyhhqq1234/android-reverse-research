.class public Lcom/netease/neox/NXPushClientReceiver;
.super Lcom/netease/pushclient/PushClientReceiver;
.source "NXPushClientReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/netease/pushclient/PushClientReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNewDevId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 12
    const-string v0, "oppo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    sget p2, Lcom/netease/neox/ngpush/R$string;->nxngpush_oppo_group_id:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget p2, Lcom/netease/neox/ngpush/R$string;->nxngpush_oppo_group_name:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    sget p2, Lcom/netease/neox/ngpush/R$string;->nxngpush_oppo_channel_id:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    sget p2, Lcom/netease/neox/ngpush/R$string;->nxngpush_oppo_channel_name:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 17
    invoke-static/range {v0 .. v7}, Lcom/netease/pushclient/PushManager;->createPushChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    :cond_0
    return-void
.end method
