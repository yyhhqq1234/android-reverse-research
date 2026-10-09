.class public Lcom/tencent/msdk/tools/SharedPreferencesTool;
.super Ljava/lang/Object;
.source "SharedPreferencesTool.java"


# static fields
.field public static final KEY_CLOUD_SWITCH:Ljava/lang/String; = "cloud_switch"

.field public static final KEY_SWITCH_FIRST_STATE:Ljava/lang/String; = "switch_first_state"

.field private static final msdkShareKey:Ljava/lang/String; = "msdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const-string v3, "cleanKey context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 163
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deftValue"    # Z

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const-string v3, "getBoolean context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 57
    .end local p2    # "deftValue":Z
    :goto_0
    return p2

    .line 50
    .restart local p2    # "deftValue":Z
    :cond_0
    move v2, p2

    .line 52
    .local v2, "value":Z
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    :goto_1
    move p2, v2

    .line 57
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deftValue"    # I

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const-string v1, "getInt context is null"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 87
    .end local p2    # "deftValue":I
    :goto_0
    return p2

    .line 86
    .restart local p2    # "deftValue":I
    :cond_0
    const-string v1, "msdk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deftValue"    # J

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const-string v4, "getLong context is null"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 103
    .end local p2    # "deftValue":J
    :goto_0
    return-wide p2

    .line 96
    .restart local p2    # "deftValue":J
    :cond_0
    move-wide v2, p2

    .line 98
    .local v2, "value":J
    :try_start_0
    const-string v4, "msdk"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    :goto_1
    move-wide p2, v2

    .line 103
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "deftValue"    # Ljava/lang/String;

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    const-string v3, "getString context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 25
    .end local p2    # "deftValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 18
    .restart local p2    # "deftValue":Ljava/lang/String;
    :cond_0
    move-object v2, p2

    .line 20
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 21
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    :goto_1
    move-object p2, v2

    .line 25
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v3, "putBoolean context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 69
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static putDouble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Z
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const-string v3, "putDouble context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 147
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const-string v3, "putInt context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 115
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pauseTime"    # Ljava/lang/String;
    .param p2, "currentTime"    # J

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const-string v3, "putLong context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 131
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const-string v3, "putString context is null"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    const-string v3, "msdk"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, "myPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 37
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v1    # "myPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
