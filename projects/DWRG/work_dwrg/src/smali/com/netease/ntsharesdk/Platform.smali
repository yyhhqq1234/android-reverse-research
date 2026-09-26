.class public abstract Lcom/netease/ntsharesdk/Platform;
.super Landroid/app/Activity;
.source "Platform.java"


# static fields
.field public static final OTHER:Ljava/lang/String; = "Other"

.field public static PLATFORM_NAME_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QQ:Ljava/lang/String; = "QQ"

.field public static SUPPORT_PLATFORM:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Version:Ljava/lang/String; = "1.3.1"

.field public static final WEIBO:Ljava/lang/String; = "Weibo"

.field public static final WEIXIN:Ljava/lang/String; = "Weixin"

.field public static final YIXIN:Ljava/lang/String; = "Yixin"

.field public static mPackName:Ljava/lang/String;


# instance fields
.field private cacheShare:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/ntsharesdk/ShareArgs;",
            ">;"
        }
    .end annotation
.end field

.field protected mConf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected myCtx:Landroid/content/Context;

.field protected shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/netease/ntsharesdk/Platform;->PLATFORM_NAME_LIST:Ljava/util/ArrayList;

    .line 30
    const-string v3, ""

    sput-object v3, Lcom/netease/ntsharesdk/Platform;->mPackName:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "com.sina.weibo"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v3, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    const-string v4, "Weibo"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "com.tencent.mm"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v3, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    const-string v4, "Weixin"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "im.yixin"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v3, "im.yixin.activity.share.ShareToSessionActivity"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v3, "im.yixin.activity.share.ShareToSnsActivity"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v3, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    const-string v4, "Yixin"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v3, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v3, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    const-string v4, "QQ"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v3, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 52
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    return-void

    .line 54
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    sget-object v4, Lcom/netease/ntsharesdk/Platform;->PLATFORM_NAME_LIST:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/netease/ntsharesdk/Platform;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    .line 181
    iput-object v0, p0, Lcom/netease/ntsharesdk/Platform;->myCtx:Landroid/content/Context;

    .line 182
    iput-object v0, p0, Lcom/netease/ntsharesdk/Platform;->mConf:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntsharesdk/Platform;->cacheShare:Ljava/util/HashMap;

    .line 184
    iput-object p1, p0, Lcom/netease/ntsharesdk/Platform;->myCtx:Landroid/content/Context;

    .line 185
    iget-object v0, p0, Lcom/netease/ntsharesdk/Platform;->myCtx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/Platform;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntsharesdk/Platform;->readConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/Platform;->mConf:Ljava/util/HashMap;

    .line 186
    return-void
.end method

.method public static dLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "ntsharesdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[1.3.1] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method private static doConfigVal(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getAllSupportPlatform()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/netease/ntsharesdk/Platform;->PLATFORM_NAME_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getPlatformAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pf"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPlatformInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "pf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPlatform(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pf"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/netease/ntsharesdk/Platform;->SUPPORT_PLATFORM:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static readConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .param p0, "myCtx"    # Landroid/content/Context;
    .param p1, "pf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "platfrom:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 109
    const/4 v9, 0x0

    .line 111
    .local v9, "jsonStr":Ljava/lang/String;
    :try_start_0
    const-string v4, "ntshare_data"

    .line 112
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const/4 v13, 0x3

    invoke-virtual {v11, v4, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 113
    .local v7, "is":Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 114
    .local v6, "index":I
    new-array v2, v6, [B

    .line 115
    .local v2, "data":[B
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    .line 117
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v2, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "jsonStr":Ljava/lang/String;
    .local v10, "jsonStr":Ljava/lang/String;
    move-object v9, v10

    .line 127
    .end local v2    # "data":[B
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "ntshare_data json:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 128
    if-nez v9, :cond_0

    move-object v5, v12

    .line 155
    :goto_1
    return-object v5

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "read ntshare_data error :"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/netease/ntsharesdk/Platform;->mPackName:Ljava/lang/String;

    .line 132
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 133
    .local v8, "jsonParser":Lorg/json/JSONTokener;
    const/4 v1, 0x0

    .line 135
    .local v1, "conf":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    .line 136
    sget-object v11, Lcom/netease/ntsharesdk/Platform;->mPackName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 137
    sget-object v11, Lcom/netease/ntsharesdk/Platform;->mPackName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    :cond_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 140
    const-string v11, "conf.has(pf) false"

    invoke-static {v11}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    move-object v5, v12

    .line 141
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    .line 145
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v5, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "app_id"

    invoke-static {v5, v1, v11}, Lcom/netease/ntsharesdk/Platform;->doConfigVal(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 147
    const-string v11, "app_sec"

    invoke-static {v5, v1, v11}, Lcom/netease/ntsharesdk/Platform;->doConfigVal(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 148
    const-string v11, "app_key"

    invoke-static {v5, v1, v11}, Lcom/netease/ntsharesdk/Platform;->doConfigVal(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 149
    const-string v11, "app_url"

    invoke-static {v5, v1, v11}, Lcom/netease/ntsharesdk/Platform;->doConfigVal(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 152
    .end local v5    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 153
    .local v3, "e":Lorg/json/JSONException;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "ntshare_data config parse to json error: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    move-object v5, v12

    .line 155
    goto/16 :goto_1
.end method


# virtual methods
.method public abstract checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;
.end method

.method protected abstract genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;
.end method

.method public abstract getAPIInst()Ljava/lang/Object;
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntsharesdk/Platform;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netease/ntsharesdk/Platform;->mConf:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netease/ntsharesdk/Platform;->mConf:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method protected abstract getPlatformName()Ljava/lang/String;
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 175
    return-void
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleRequest(Ljava/lang/Object;)V
    .locals 0
    .param p1, "resp"    # Ljava/lang/Object;

    .prologue
    .line 178
    return-void
.end method

.method public handleResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "resp"    # Ljava/lang/Object;

    .prologue
    .line 177
    return-void
.end method

.method protected abstract initSdk()V
.end method

.method protected popShareTransaction(Ljava/lang/String;)Lcom/netease/ntsharesdk/ShareArgs;
    .locals 2
    .param p1, "transaction"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/netease/ntsharesdk/Platform;->cacheShare:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/netease/ntsharesdk/Platform;->cacheShare:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntsharesdk/ShareArgs;

    .line 200
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    iget-object v1, p0, Lcom/netease/ntsharesdk/Platform;->cacheShare:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected pushShareTranscation(Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 1
    .param p1, "transaction"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netease/ntsharesdk/Platform;->cacheShare:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netease/ntsharesdk/Platform;->mConf:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setShareEndListener(Lcom/netease/ntsharesdk/OnShareEndListener;)V
    .locals 0
    .param p1, "ls"    # Lcom/netease/ntsharesdk/OnShareEndListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/netease/ntsharesdk/Platform;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    .line 85
    return-void
.end method

.method public abstract share(Lcom/netease/ntsharesdk/ShareArgs;)V
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;Landroid/app/Activity;)V
    .locals 0
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/Platform;->share(Lcom/netease/ntsharesdk/ShareArgs;)V

    .line 89
    return-void
.end method

.method public abstract updateApi(Ljava/lang/String;)V
.end method
