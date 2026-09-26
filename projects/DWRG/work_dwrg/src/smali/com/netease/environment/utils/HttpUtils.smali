.class public Lcom/netease/environment/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyURL(Ljava/lang/String;)Z
    .locals 3
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 22
    :goto_0
    return v1

    .line 17
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v1, 0x1

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0
.end method
