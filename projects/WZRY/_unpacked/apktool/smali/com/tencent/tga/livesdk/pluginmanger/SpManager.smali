.class public Lcom/tencent/tga/livesdk/pluginmanger/SpManager;
.super Ljava/lang/Object;
.source "SpManager.java"


# static fields
.field private static final SP_KEY_HOST_VERSION:Ljava/lang/String; = "HOST_VERSION"

.field private static final SP_KEY_NEW_APK_FILE:Ljava/lang/String; = "NEW_APK_FILE"

.field private static final SP_KEY_NEW_APK_MD5:Ljava/lang/String; = "NEW_APK_MD5"

.field private static final SP_KEY_NEW_APK_STATE:Ljava/lang/String; = "NEW_APK_STATE"

.field private static final SP_KEY_NEW_APK_VERSION:Ljava/lang/String; = "NEW_APK_VERSION"

.field private static final SP_NAME:Ljava/lang/String; = "tga_live_plugin_sp"

.field public static final STATE_ERROR:I = 0x0

.field public static final STATE_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewApkFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 172
    const-string/jumbo v2, "tga_live_plugin_sp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NEW_APK_FILE"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "baseApkFile":Ljava/lang/String;
    return-object v0
.end method

.method public static getNewApkMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string/jumbo v2, "tga_live_plugin_sp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NEW_APK_MD5"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "baseApkFile":Ljava/lang/String;
    return-object v0
.end method

.method public static getNewApkState(Landroid/content/Context;)I
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string/jumbo v2, "tga_live_plugin_sp"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NEW_APK_STATE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, "state":I
    return v1
.end method

.method public static getNewApkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 160
    const-string/jumbo v2, "tga_live_plugin_sp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NEW_APK_VERSION"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "baseApkFile":Ljava/lang/String;
    return-object v0
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 83
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 87
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isNewApkValid(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-static {p0}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkState(Landroid/content/Context;)I

    move-result v4

    .line 121
    .local v4, "state":I
    if-nez v4, :cond_0

    .line 136
    :goto_0
    return v5

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "md5":Ljava/lang/String;
    invoke-static {p0}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/tga/livesdk/uitl/MD5;->digest(Ljava/io/File;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/tga/livesdk/uitl/MD5;->bufferToString([B)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "fileMd5":Ljava/lang/String;
    const-string v6, "SpManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileMd5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " md5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->setNewApkState(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "fileMd5":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SpManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File not found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0, v5}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->setNewApkState(Landroid/content/Context;I)V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileMd5":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static newHostVersion(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 68
    const-string/jumbo v4, "tga_live_plugin_sp"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getVersion(Landroid/content/Context;)I

    move-result v2

    .line 70
    .local v2, "versionCode":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    const-string v4, "HOST_VERSION"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, "spCode":I
    if-eq v1, v5, :cond_2

    if-ge v1, v2, :cond_0

    .line 73
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "HOST_VERSION"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setNewApkInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "versionCode"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "md5"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string/jumbo v2, "tga_live_plugin_sp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 189
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "NEW_APK_FILE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v2, "NEW_APK_VERSION"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v2, "NEW_APK_STATE"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v2, "NEW_APK_MD5"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    return-void
.end method

.method public static setNewApkState(Landroid/content/Context;I)V
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 223
    const-string/jumbo v2, "tga_live_plugin_sp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "NEW_APK_STATE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void
.end method
