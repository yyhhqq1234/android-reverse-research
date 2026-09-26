.class public Lcom/netease/environment/utils/NetWorkUtils;
.super Ljava/lang/Object;
.source "NetWorkUtils.java"


# static fields
.field public static final NETWORKTYPE_2G:I = 0x2

.field public static final NETWORKTYPE_3G:I = 0x3

.field public static final NETWORKTYPE_4G:I = 0x4

.field public static final NETWORKTYPE_INVALID:I = 0x0

.field public static final NETWORKTYPE_WIFI:I = 0x5

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netease/environment/utils/NetWorkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/utils/NetWorkUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v4, 0x0

    .line 21
    .local v4, "type":I
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 22
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 23
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 24
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 25
    const/4 v4, 0x5

    .line 62
    :cond_0
    :goto_0
    return v4

    .line 26
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 27
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "_strSubTypeName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 31
    .local v3, "networkType":I
    packed-switch v3, :pswitch_data_0

    .line 55
    const-string v5, "TD-SCDMA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "WCDMA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CDMA2000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    .line 37
    :pswitch_0
    const/4 v4, 0x2

    .line 38
    goto :goto_0

    .line 48
    :pswitch_1
    const/4 v4, 0x3

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    const/4 v4, 0x4

    .line 52
    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v0, "invalid"

    .line 67
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/netease/environment/utils/NetWorkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    :pswitch_0
    return-object v0

    .line 69
    :pswitch_1
    const-string v0, "invalid"

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    const-string v0, "2G"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_3
    const-string v0, "3G"

    .line 76
    goto :goto_0

    .line 78
    :pswitch_4
    const-string v0, "4G"

    .line 79
    goto :goto_0

    .line 81
    :pswitch_5
    const-string v0, "wifi"

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
