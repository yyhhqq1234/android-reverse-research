.class public Lcom/netease/ntsharesdk/ShareMgr;
.super Ljava/lang/Object;
.source "ShareMgr.java"


# static fields
.field private static inst:Lcom/netease/ntsharesdk/ShareMgr;


# instance fields
.field private currentPlatform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private installedPlatfrom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lastCheckInstalledPlatform:Landroid/text/format/Time;

.field private lastPlatform:Ljava/lang/String;

.field private myCtx:Landroid/content/Context;

.field private shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

.field private shareViewTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/netease/ntsharesdk/ShareMgr;

    invoke-direct {v0}, Lcom/netease/ntsharesdk/ShareMgr;-><init>()V

    sput-object v0, Lcom/netease/ntsharesdk/ShareMgr;->inst:Lcom/netease/ntsharesdk/ShareMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    .line 110
    iput-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    .line 111
    iput-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastCheckInstalledPlatform:Landroid/text/format/Time;

    .line 251
    const-string v0, "\u5206\u4eab"

    iput-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->shareViewTitle:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    .line 277
    iput-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/netease/ntsharesdk/ShareMgr;)Lcom/netease/ntsharesdk/OnShareEndListener;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/ntsharesdk/ShareMgr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastPlatform:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/netease/ntsharesdk/ShareMgr;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/netease/ntsharesdk/ShareMgr;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/netease/ntsharesdk/ShareMgr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->shareViewTitle:Ljava/lang/String;

    return-object v0
.end method

.method private checkCurrentPlatform(Z)V
    .locals 13
    .param p1, "noCheck"    # Z

    .prologue
    .line 64
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    if-eqz v10, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    .line 69
    if-eqz p1, :cond_2

    .line 70
    const-string v10, "do not checkCurrentPlatform"

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v7, 0x0

    .line 76
    .local v7, "jsonStr":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "ntshare_data"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    .line 77
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 78
    .local v4, "index":I
    new-array v2, v4, [B

    .line 79
    .local v2, "data":[B
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 80
    new-instance v8, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v8, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v7    # "jsonStr":Ljava/lang/String;
    .local v8, "jsonStr":Ljava/lang/String;
    move-object v7, v8

    .line 85
    .end local v2    # "data":[B
    .end local v4    # "index":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "jsonStr":Ljava/lang/String;
    .restart local v7    # "jsonStr":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read ntshare_data:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 87
    if-eqz v7, :cond_0

    .line 91
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, "jsonParser":Lorg/json/JSONTokener;
    const/4 v1, 0x0

    .line 94
    .local v1, "conf":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    .line 95
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 96
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 98
    :cond_3
    invoke-static {}, Lcom/netease/ntsharesdk/Platform;->getAllSupportPlatform()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 99
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 100
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "checkCurrentPlatform:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 101
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "com.netease.ntsharesdk.platform."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/netease/ntsharesdk/ShareMgr;->addPlatformSdk(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 105
    .end local v9    # "key":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read ntshare_data error :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    .end local v1    # "conf":Lorg/json/JSONObject;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "jsonParser":Lorg/json/JSONTokener;
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read ntshare_data error :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private checkInstalledPlatform()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 114
    const-string v5, "checkInstalledPlatform..."

    invoke-static {v5}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastCheckInstalledPlatform:Landroid/text/format/Time;

    if-eqz v5, :cond_1

    .line 116
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    iget-object v7, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastCheckInstalledPlatform:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1c20

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 136
    :cond_0
    return-void

    .line 119
    :cond_1
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastCheckInstalledPlatform:Landroid/text/format/Time;

    .line 120
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    .line 123
    invoke-static {}, Lcom/netease/ntsharesdk/Platform;->getAllSupportPlatform()Ljava/util/ArrayList;

    move-result-object v4

    .line 124
    .local v4, "supportPlatform":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 128
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 129
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 132
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, "pf":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/netease/ntsharesdk/Platform;->getPlatformAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInst()Lcom/netease/ntsharesdk/ShareMgr;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netease/ntsharesdk/ShareMgr;->inst:Lcom/netease/ntsharesdk/ShareMgr;

    return-object v0
.end method


# virtual methods
.method public addPlatformSdk(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 48
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "platformName":Ljava/lang/String;
    invoke-static {v2}, Lcom/netease/ntsharesdk/Platform;->hasPlatform(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 55
    iget-object v3, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdk "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 59
    .local v1, "localThrowable3":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;
    .locals 8
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/netease/ntsharesdk/Platform;

    if-nez v5, :cond_0

    .line 141
    const-string v5, "init sdk classs"

    invoke-static {v5}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 145
    .local v2, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 146
    .local v3, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 148
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 149
    .local v4, "localObject":Ljava/lang/Object;
    iget-object v6, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    move-object v0, v4

    check-cast v0, Lcom/netease/ntsharesdk/Platform;

    move-object v5, v0

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    check-cast v4, Lcom/netease/ntsharesdk/Platform;

    .end local v4    # "localObject":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/netease/ntsharesdk/Platform;->initSdk()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 164
    .end local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/netease/ntsharesdk/Platform;

    if-eqz v5, :cond_1

    .line 165
    const-string v5, "direct get platform"

    invoke-static {v5}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 166
    iget-object v5, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntsharesdk/Platform;

    .line 169
    :goto_1
    return-object v5

    .line 151
    .restart local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntsharesdk/Platform;

    .line 267
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntsharesdk/Platform;->handleActivityResult(IILandroid/content/Intent;)V

    .line 269
    :cond_0
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/ntsharesdk/ShareMgr;->lastPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntsharesdk/Platform;

    invoke-virtual {v0, p1}, Lcom/netease/ntsharesdk/Platform;->handleIntent(Landroid/content/Intent;)V

    .line 261
    :cond_0
    return-void
.end method

.method public hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 173
    const-string v0, "Other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    .line 177
    invoke-static {p1}, Lcom/netease/ntsharesdk/Platform;->getPlatformAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->installedPlatfrom:Ljava/util/HashMap;

    .line 178
    invoke-static {p1}, Lcom/netease/ntsharesdk/Platform;->getPlatformAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->currentPlatform:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntsharesdk/ShareMgr;->setContext(Landroid/content/Context;Z)V

    .line 287
    return-void
.end method

.method public setContext(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "noCheckMyLib"    # Z

    .prologue
    .line 280
    iput-object p1, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    .line 281
    invoke-direct {p0, p2}, Lcom/netease/ntsharesdk/ShareMgr;->checkCurrentPlatform(Z)V

    .line 282
    invoke-direct {p0}, Lcom/netease/ntsharesdk/ShareMgr;->checkInstalledPlatform()V

    .line 283
    return-void
.end method

.method public setShareEndListener(Lcom/netease/ntsharesdk/OnShareEndListener;)V
    .locals 0
    .param p1, "se"    # Lcom/netease/ntsharesdk/OnShareEndListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/netease/ntsharesdk/ShareMgr;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    .line 275
    return-void
.end method

.method public setShareViewTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/netease/ntsharesdk/ShareMgr;->shareViewTitle:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;
    .param p2, "pfName"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntsharesdk/ShareMgr;->share(Lcom/netease/ntsharesdk/ShareArgs;Ljava/lang/String;Landroid/app/Activity;)V

    .line 249
    return-void
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;
    .param p2, "pfName"    # Ljava/lang/String;
    .param p3, "act"    # Landroid/app/Activity;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShareArgs:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareMgr;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntsharesdk/ShareMgr$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/netease/ntsharesdk/ShareMgr$1;-><init>(Lcom/netease/ntsharesdk/ShareMgr;Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public updateApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0, p2}, Lcom/netease/ntsharesdk/ShareMgr;->hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateApi platform : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", api : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p2}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    .line 293
    .local v0, "pf":Lcom/netease/ntsharesdk/Platform;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Lcom/netease/ntsharesdk/Platform;->updateApi(Ljava/lang/String;)V

    goto :goto_0
.end method
