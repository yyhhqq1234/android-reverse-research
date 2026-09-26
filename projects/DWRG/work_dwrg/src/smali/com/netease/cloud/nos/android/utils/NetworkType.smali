.class public Lcom/netease/cloud/nos/android/utils/NetworkType;
.super Ljava/lang/Object;
.source "NetworkType.java"


# instance fields
.field private chunkSize:I

.field private networkType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->networkType:Ljava/lang/String;

    .line 13
    const v0, 0x8000

    iput v0, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->chunkSize:I

    .line 21
    iput-object p1, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->networkType:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getChunkSize()I

    move-result v0

    iput v0, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->chunkSize:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "networkType"    # Ljava/lang/String;
    .param p2, "chunkSize"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->networkType:Ljava/lang/String;

    .line 13
    const v0, 0x8000

    iput v0, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->chunkSize:I

    .line 16
    iput-object p1, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->networkType:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->chunkSize:I

    .line 18
    return-void
.end method

.method public static getFastMobileNetwork(Landroid/content/Context;)Lcom/netease/cloud/nos/android/utils/NetworkType;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    .line 36
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 37
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 78
    new-instance v1, Lcom/netease/cloud/nos/android/utils/NetworkType;

    const-string v2, "2g"

    invoke-direct {v1, v2}, Lcom/netease/cloud/nos/android/utils/NetworkType;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 48
    :pswitch_0
    new-instance v1, Lcom/netease/cloud/nos/android/utils/NetworkType;

    const-string v2, "2g"

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Lcom/netease/cloud/nos/android/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v1, Lcom/netease/cloud/nos/android/utils/NetworkType;

    const-string v2, "3g/4g"

    const v3, 0x8000

    invoke-direct {v1, v2, v3}, Lcom/netease/cloud/nos/android/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 60
    :pswitch_2
    new-instance v1, Lcom/netease/cloud/nos/android/utils/NetworkType;

    const-string v2, "3g/4g"

    const/high16 v3, 0x10000

    invoke-direct {v1, v2, v3}, Lcom/netease/cloud/nos/android/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 74
    :pswitch_3
    new-instance v1, Lcom/netease/cloud/nos/android/utils/NetworkType;

    const-string v2, "3g/4g"

    const/high16 v3, 0x20000

    invoke-direct {v1, v2, v3}, Lcom/netease/cloud/nos/android/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getNetWorkType(Landroid/content/Context;)Lcom/netease/cloud/nos/android/utils/NetworkType;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    .line 85
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 87
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "type":Ljava/lang/String;
    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    new-instance v3, Lcom/netease/cloud/nos/android/utils/NetworkType;

    const-string v4, "wifi"

    const/high16 v5, 0x20000

    invoke-direct {v3, v4, v5}, Lcom/netease/cloud/nos/android/utils/NetworkType;-><init>(Ljava/lang/String;I)V

    .line 96
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 91
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string v3, "MOBILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-static {p0}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getFastMobileNetwork(Landroid/content/Context;)Lcom/netease/cloud/nos/android/utils/NetworkType;

    move-result-object v3

    goto :goto_0

    .line 96
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/netease/cloud/nos/android/utils/NetworkType;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/netease/cloud/nos/android/utils/NetworkType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->chunkSize:I

    return v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/NetworkType;->networkType:Ljava/lang/String;

    return-object v0
.end method
