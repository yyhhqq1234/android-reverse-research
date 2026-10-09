.class public Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;
.super Ljava/lang/Object;
.source "HttpDnsManager.java"


# static fields
.field public static IPString:Ljava/lang/String;

.field public static SPTAG:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static encId:Ljava/lang/String;

.field private static encKey:Ljava/lang/String;

.field public static result:Ljava/lang/String;

.field private static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "HttpDnsManager"

    sput-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, ">srW/8;&"

    sput-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->encKey:Ljava/lang/String;

    .line 27
    const-string v0, "1"

    sput-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->encId:Ljava/lang/String;

    .line 29
    const-string v0, "http://182.254.116.117/d?dn=%s.&id=1&ttl=1"

    sput-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->url:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->result:Ljava/lang/String;

    .line 141
    const-string v0, "TGAPluginSDK"

    sput-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->SPTAG:Ljava/lang/String;

    .line 142
    const-string v0, "IPString"

    sput-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->IPString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SPGetString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v1, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->SPTAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static SPSaveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v2, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->SPTAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getIpList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->getIpString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "ipstring":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 38
    sget-object v4, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->IPString:Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->SPSaveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->splitIpString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v1

    .line 48
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "list":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 40
    .end local v3    # "list":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v4, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->IPString:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->SPGetString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/loopj/android/tgahttp/Configs/Configs;->ip_list:Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v1

    .line 44
    .restart local v3    # "list":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static getIpString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 58
    sget-object v5, Lcom/loopj/android/tgahttp/Configs/Configs;->domain:Ljava/lang/String;

    sget-object v6, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->encKey:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/loopj/android/tgahttp/httpDNS/HttpDns;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "encode":Ljava/lang/String;
    sget-boolean v5, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v5, :cond_0

    .line 60
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encode-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :try_start_0
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->url:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "dns_url":Ljava/lang/String;
    sget-boolean v5, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v5, :cond_1

    .line 66
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dns_url req url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    const-string v6, "client start"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    new-instance v0, Lcom/loopj/android/tgahttp/SyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/tgahttp/SyncHttpClient;-><init>()V

    .line 70
    .local v0, "client":Lcom/loopj/android/tgahttp/SyncHttpClient;
    const/4 v5, 0x2

    const/16 v6, 0xbb8

    invoke-virtual {v0, v5, v6}, Lcom/loopj/android/tgahttp/SyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 71
    new-instance v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager$1;

    invoke-direct {v5}, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager$1;-><init>()V

    invoke-virtual {v0, v2, v5}, Lcom/loopj/android/tgahttp/SyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/tgahttp/ResponseHandlerInterface;)Lcom/loopj/android/tgahttp/RequestHandle;

    .line 91
    sget-boolean v5, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v5, :cond_2

    .line 92
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    const-string v6, "client finish"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "client":Lcom/loopj/android/tgahttp/SyncHttpClient;
    .end local v2    # "dns_url":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-boolean v5, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v5, :cond_3

    .line 101
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->result:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_3
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->result:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 104
    const-string v1, ""

    .line 110
    :cond_4
    :goto_1
    return-object v1

    .line 94
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v5, :cond_2

    .line 97
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIpString  Exception-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->result:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->encKey:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/loopj/android/tgahttp/httpDNS/HttpDns;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "decode":Ljava/lang/String;
    sget-boolean v5, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v5, :cond_4

    .line 108
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static splitIpString(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "ipstring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "ipArrayContainPort":[Ljava/lang/String;
    array-length v6, v2

    if-lez v6, :cond_2

    .line 123
    const/4 v6, 0x0

    aget-object v6, v2, v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "ipArray":[Ljava/lang/String;
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v4, v1, v5

    .line 125
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/loopj/android/tgahttp/httpDNS/HttpDns;->isIPValidity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "ipArray":[Ljava/lang/String;
    .end local v2    # "ipArrayContainPort":[Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v5, :cond_1

    .line 132
    sget-object v5, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "\u89e3\u6790IP\u5730\u5740\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v3
.end method
