.class public Lcom/tencent/igame/priority/sdk/IGamePriority;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "WzryPrioritySDK"


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

.field private a:Lcom/tencent/igame/priority/sdk/PriorityProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/igame/priority/sdk/c;->a(Lcom/tencent/igame/priority/sdk/IGamePriority;)V

    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/b/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private a(Z)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    const/16 v0, 0x30

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->b(I)V

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    const/16 v0, 0x31

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/igame/a/a/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x32

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/igame/priority/sdk/IGamePriority;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    const-string/jumbo v0, "\u6b63\u5728\u5411\u6e38\u620f\u4eba\u751fApp\u8bf7\u6c42Token..."

    invoke-virtual {p0, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/igame/priority/sdk/rpc/a;->a()Lcom/tencent/igame/priority/sdk/rpc/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    new-instance v2, Lcom/tencent/igame/priority/sdk/a;

    invoke-direct {v2, p0}, Lcom/tencent/igame/priority/sdk/a;-><init>(Lcom/tencent/igame/priority/sdk/IGamePriority;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Landroid/content/Context;Lcom/tencent/igame/priority/sdk/rpc/d;)V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->changeToErrMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static changeToErrMsg(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "\u60a8\u7684\u8bf7\u6c42\u8fc7\u4e8e\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    goto :goto_0

    :sswitch_1
    const-string v0, "Context\u4e3a\u7a7a, \u8bf7\u68c0\u67e5\u6709\u6ca1\u6709\u521d\u59cb\u5316IGamePriority\u7c7b"

    goto :goto_0

    :sswitch_2
    const-string v0, "Listener\u4e3a\u7a7a, \u8bf7\u68c0\u67e5\u6709\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u56de\u8c03"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "\u5f53\u524d\u7f51\u7edc\u73af\u5883\u4e0d\u662fwifi\u73af\u5883"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "\u672c\u5730\u7f13\u5b58\u6709\u6548\uff0c\u672a\u8bf7\u6c42\u670d\u52a1\u5668"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "\u65e0\u6cd5\u8fde\u63a5\u670d\u52a1\u5668\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    goto :goto_0

    :sswitch_6
    const-string v0, "Json\u683c\u5f0f\u89e3\u6790\u9519\u8bef"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "\u89e3\u5bc6\u5931\u8d25"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "\u7528\u6237\u53d6\u6d88\u7ee7\u7eed\u8bf7\u6c42\u7279\u6743"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u672a\u6ce8\u518c"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u4e0d\u5339\u914d"

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u7279\u5f81\u4fe1\u606f\u6709\u8bef"

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u8d85\u9650"

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u5df2\u7ed1\u5b9a"

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u672a\u7ed1\u5b9a"

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u5df2\u6ce8\u518c"

    goto :goto_0

    :sswitch_11
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u79bb\u7ebf"

    goto :goto_0

    :sswitch_12
    const-string/jumbo v0, "\u7b7e\u540d\u4fe1\u606f\u65e0\u6548"

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "\u7ec8\u7aef\u8bbe\u5907\u975e\u6cd5"

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "\u7ec8\u7aef\u8bbe\u5907\u79bb\u7ebf"

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "\u7968\u636e\u975e\u6cd5."

    goto :goto_0

    :sswitch_16
    const-string/jumbo v0, "\u901a\u4fe1\u5bc6\u94a5\u8fc7\u671f"

    goto :goto_0

    :sswitch_17
    const-string/jumbo v0, "\u4e1a\u52a1\u4e0d\u5339\u914d"

    goto :goto_0

    :sswitch_18
    const-string/jumbo v0, "\u5e93\u5b58\u4e0d\u8db3"

    goto :goto_0

    :sswitch_19
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u65e0\u6cd5\u8bc6\u522b\u547d\u4ee4\u5b57"

    goto :goto_0

    :sswitch_1a
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u548c\u670d\u52a1\u7aef\u901a\u8baf\u5931\u8d25"

    goto :goto_0

    :sswitch_1b
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u5f97\u5230\u670d\u52a1\u7aef\u9519\u8bef\u54cd\u5e94"

    goto :goto_0

    :sswitch_1c
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u6536\u5230\u9519\u8bef\u7684\u8bf7\u6c42\u683c\u5f0f"

    goto :goto_0

    :sswitch_1d
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u64cd\u4f5c\u5931\u8d25"

    goto :goto_0

    :sswitch_1e
    const-string/jumbo v0, "\u5b89\u5168\u8bbe\u5907\u89e3\u5bc6\u5931\u8d25"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0x12 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_6
        0x25 -> :sswitch_7
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x32 -> :sswitch_3
        0x40 -> :sswitch_8
        0x99 -> :sswitch_9
        0x2711 -> :sswitch_a
        0x2712 -> :sswitch_b
        0x2713 -> :sswitch_c
        0x2714 -> :sswitch_d
        0x2715 -> :sswitch_e
        0x2716 -> :sswitch_f
        0x2717 -> :sswitch_10
        0x2718 -> :sswitch_11
        0x271b -> :sswitch_12
        0x271c -> :sswitch_13
        0x271d -> :sswitch_14
        0x271e -> :sswitch_15
        0x2726 -> :sswitch_16
        0x2775 -> :sswitch_17
        0x2776 -> :sswitch_18
        0x4e21 -> :sswitch_19
        0x4e22 -> :sswitch_1a
        0x4e23 -> :sswitch_1b
        0x4e24 -> :sswitch_1c
        0x4e25 -> :sswitch_1d
        0x4e26 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static getSDKEdition()Ljava/lang/String;
    .locals 1

    const-string v0, "WzryPrioritySDK_android_V1.0.2_20181010"

    return-object v0
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

    invoke-static {p1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->changeToErrMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tencent/igame/priority/sdk/IGamePriorityListener;->onFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

    const-string v1, "igame_priority_sdk_pref_wzry_key_device_id"

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/tencent/igame/priority/sdk/IGamePriorityListener;->onGetToken(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

    invoke-static {p1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->changeToErrMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tencent/igame/priority/sdk/IGamePriorityListener;->onFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/PriorityProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/PriorityProgressListener;

    invoke-interface {v0, p1}, Lcom/tencent/igame/priority/sdk/PriorityProgressListener;->onProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public askPriority()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Z)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->doSDKCheckAndAskPriority()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(I)V

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/c;->a()V

    const-string/jumbo v0, "wzry"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public doAppCheckAndAskPriority()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "App\u6b63\u5728\u8bf7\u6c42Token..."

    invoke-virtual {p0, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Z)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public doSDKCheckAndAskPriority()V
    .locals 2

    const-string v0, "SDK\u6b63\u5728\u8bf7\u6c42Token..."

    invoke-virtual {p0, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Z)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public logAppInfo(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/tencent/igame/priority/sdk/b/a;->b(ILjava/lang/String;)V

    return-void
.end method

.method public setDebuggable(Z)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/igame/priority/sdk/g/c;->a(Z)V

    invoke-static {p1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Z)V

    return-void
.end method

.method public setListener(Lcom/tencent/igame/priority/sdk/IGamePriorityListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/IGamePriorityListener;

    :cond_0
    return-void
.end method

.method public setProgressListener(Lcom/tencent/igame/priority/sdk/PriorityProgressListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/IGamePriority;->a:Lcom/tencent/igame/priority/sdk/PriorityProgressListener;

    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/igame/priority/sdk/b/a;->a(Ljava/lang/String;I)V

    return-void
.end method
