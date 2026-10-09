.class public Lcom/tencent/msdk/tools/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field public static WXPAKAGENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "com.tencent.mm"

    sput-object v0, Lcom/tencent/msdk/tools/Tools;->WXPAKAGENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInetAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, ""

    .line 91
    :goto_0
    return-object v2

    .line 83
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 84
    .local v1, "ips":[Ljava/net/InetAddress;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 85
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 87
    .end local v1    # "ips":[Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 89
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 91
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static getMsdkProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v2, ""

    .line 96
    .local v2, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v3, v2

    .end local v2    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    move-object v4, v2

    .line 107
    .end local v3    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 100
    .end local v4    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    .local v1, "r":Landroid/content/res/Resources;
    const-string/jumbo v6, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 102
    .local v5, "valueid":I
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v5    # "valueid":I
    :goto_1
    move-object v3, v2

    .end local v2    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    move-object v4, v2

    .line 107
    .end local v3    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v4    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "not found msdk url file please update MSDKLibrary project"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static handlerWxGroupErrorCode(Lcom/tencent/msdk/api/GroupRet;Z)V
    .locals 7
    .param p0, "ret"    # Lcom/tencent/msdk/api/GroupRet;
    .param p1, "isClient"    # Z

    .prologue
    const/16 v6, 0x7da

    const/16 v5, 0x7d9

    const/16 v4, 0x7d2

    const/16 v3, 0x7dd

    const/16 v2, 0x7dc

    .line 110
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/tencent/msdk/api/GroupRet;->platform:I

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 111
    iget v0, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "platform error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 115
    if-eqz p1, :cond_2

    .line 116
    iget v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    sparse-switch v0, :sswitch_data_0

    .line 146
    iget v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 170
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msdk platform error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :sswitch_0
    iput v4, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 119
    iput v4, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 122
    :sswitch_1
    const/16 v0, 0x7de

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 123
    const/16 v0, 0x7de

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 126
    :sswitch_2
    const/16 v0, 0x7df

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 127
    const/16 v0, 0x7df

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 130
    :sswitch_3
    iput v5, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 131
    iput v5, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 134
    :sswitch_4
    iput v2, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 135
    iput v2, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 138
    :sswitch_5
    const/16 v0, 0x7db

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 139
    const/16 v0, 0x7db

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 142
    :sswitch_6
    iput v3, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 143
    iput v3, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 150
    :cond_2
    iget v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    sparse-switch v0, :sswitch_data_1

    .line 165
    iget v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    goto :goto_1

    .line 153
    :sswitch_7
    iput v2, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 154
    iput v2, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 157
    :sswitch_8
    iput v3, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 158
    iput v3, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 161
    :sswitch_9
    iput v6, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    .line 162
    iput v6, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    goto :goto_1

    .line 116
    :sswitch_data_0
    .sparse-switch
        -0x7531 -> :sswitch_6
        -0x4e23 -> :sswitch_5
        -0x4e22 -> :sswitch_4
        -0x4e21 -> :sswitch_3
        -0x271a -> :sswitch_2
        -0x2718 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch

    .line 150
    :sswitch_data_1
    .sparse-switch
        -0x4e21 -> :sswitch_7
        -0x2717 -> :sswitch_8
        -0x2712 -> :sswitch_9
    .end sparse-switch
.end method

.method public static isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "para"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 54
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v4

    .line 57
    :cond_1
    const/4 v3, 0x0

    .line 58
    .local v3, "userApparrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v3, :cond_3

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "userApparrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local v3    # "userApparrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 62
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 63
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 64
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "i":I
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static reflectResouce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "RclassName"    # Ljava/lang/String;
    .param p1, "para"    # Ljava/lang/String;
    .param p2, "filed"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 33
    :cond_0
    const/4 v4, 0x0

    .line 43
    :goto_0
    return v4

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 36
    .local v3, "oj":Ljava/lang/Object;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 38
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 40
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "oj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    return-void
.end method
