.class public Lcom/tencent/tmapkupdatesdk/internal/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/b/a;->a:Ljava/lang/String;

    .line 23
    const/16 v0, 0x50

    sput v0, Lcom/tencent/tmapkupdatesdk/internal/b/a;->b:I

    .line 24
    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a()Lcom/tencent/tmapkupdatesdk/internal/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    const-string v0, ""

    .line 55
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 39
    const-string v0, ""

    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    const-string v0, ""

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 47
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    const-string v0, ""

    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
