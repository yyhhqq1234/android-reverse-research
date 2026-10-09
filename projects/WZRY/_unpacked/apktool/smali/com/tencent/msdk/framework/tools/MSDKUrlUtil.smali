.class public Lcom/tencent/msdk/framework/tools/MSDKUrlUtil;
.super Ljava/lang/Object;
.source "MSDKUrlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseUrl2Bundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 18
    .local v1, "ampsandSplits":[Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    :cond_0
    const-string/jumbo v5, "url has no params"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 40
    :cond_1
    :goto_0
    return-object v2

    .line 23
    :cond_2
    const-string v6, "[&]"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    array-length v6, v1

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 25
    .local v0, "ampsandSplit":Ljava/lang/String;
    const-string v7, "[=]"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "equalSplits":[Ljava/lang/String;
    array-length v7, v4

    if-le v7, v10, :cond_3

    .line 28
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    :cond_3
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 36
    .end local v0    # "ampsandSplit":Ljava/lang/String;
    .end local v4    # "equalSplits":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 37
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
