.class public Lcom/tencent/component/cache/sp/PreferenceUtil;
.super Ljava/lang/Object;
.source "PreferenceUtil.java"


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = "cache"

.field private static final DEFAULT_NAME:Ljava/lang/String; = "preference"

.field private static final GLOBAL:Ljava/lang/String; = "global"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachePreference(Landroid/content/Context;J)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uin"    # J

    .prologue
    .line 45
    const-string v0, "cache"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getPreference(Landroid/content/Context;JLjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getCachePreference(Landroid/content/Context;JF)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uin"    # J
    .param p3, "version"    # F

    .prologue
    .line 49
    const-string v0, "cache"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getPreference(Landroid/content/Context;JLjava/lang/String;F)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultGlobalPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultGlobalPreference(Landroid/content/Context;F)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # F

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;F)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPreference(Landroid/content/Context;J)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uin"    # J

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getPreference(Landroid/content/Context;JLjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPreference(Landroid/content/Context;JF)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uin"    # J
    .param p3, "version"    # F

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getPreference(Landroid/content/Context;JLjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalCachePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v0, "cache"

    invoke-static {p0, v0}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalCachePreference(Landroid/content/Context;F)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # F

    .prologue
    .line 73
    const-string v0, "cache"

    invoke-static {p0, v0, p1}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;F)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getPreference(Landroid/content/Context;JLjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalPreference(Landroid/content/Context;Ljava/lang/String;F)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # F

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getPreference(Landroid/content/Context;JLjava/lang/String;F)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Landroid/content/Context;JLjava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uin"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 26
    :cond_0
    const-string p3, "preference"

    .line 28
    :cond_1
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "%2F"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 29
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    const-string v1, "global"

    .line 30
    .local v1, "uinStr":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "preferenceName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    return-object v2

    .line 29
    .end local v0    # "preferenceName":Ljava/lang/String;
    .end local v1    # "uinStr":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/component/utils/SecurityUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPreference(Landroid/content/Context;JLjava/lang/String;F)Landroid/content/SharedPreferences;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uin"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "version"    # F

    .prologue
    .line 35
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 36
    :cond_0
    const-string p3, "preference"

    .line 39
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    const-string v1, "global"

    .line 40
    .local v1, "uinStr":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "preferenceName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    return-object v2

    .line 39
    .end local v0    # "preferenceName":Ljava/lang/String;
    .end local v1    # "uinStr":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/component/utils/SecurityUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
