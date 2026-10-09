.class Lcom/tencent/msdk/webview/AndroidNotchScreen;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"


# static fields
.field private static final VIVO_NOTCH:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotchHeight(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 213
    :try_start_0
    const-string v6, "Xiaomi"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "notch_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 216
    .local v4, "identifier":I
    if-lez v4, :cond_3

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 242
    .end local v4    # "identifier":I
    :goto_0
    return v6

    .line 219
    :cond_0
    const-string v6, "huawei"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 224
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    const-string v6, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 225
    .local v1, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string v6, "getNotchSize"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 226
    .local v3, "getNotchSize":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v5, v0

    .line 227
    .local v5, "ret":[I
    array-length v6, v5

    if-le v6, v8, :cond_3

    const/4 v6, 0x1

    aget v6, v5, v6

    if-lez v6, :cond_3

    .line 228
    const/4 v6, 0x1

    aget v6, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 234
    .end local v1    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "getNotchSize":Ljava/lang/reflect/Method;
    .end local v5    # "ret":[I
    :cond_1
    :try_start_2
    const-string v6, "oppo"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    const/16 v6, 0x50

    goto :goto_0

    .line 236
    :cond_2
    const-string/jumbo v6, "vivo"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 237
    const/high16 v6, 0x41d80000    # 27.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_0

    .line 239
    :catch_0
    move-exception v6

    .line 242
    :cond_3
    :goto_1
    const/16 v6, 0x5a

    goto :goto_0

    .line 230
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static hasNotchAtHuawei(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v3, 0x0

    .line 170
    .local v3, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 171
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v4, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 172
    .local v0, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string v4, "hasNotchInScreen"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 173
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 178
    .end local v0    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 175
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static hasNotchAtOppo(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasNotchAtVivo(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v3, 0x0

    .line 198
    .local v3, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 199
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v4, "android.util.FtFeature"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 200
    .local v0, "FtFeature":Ljava/lang/Class;
    const-string v4, "isFeatureSupport"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 201
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 206
    .end local v0    # "FtFeature":Ljava/lang/Class;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 203
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static hasNotchAtXiaomi(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 140
    const/4 v5, 0x0

    .line 143
    .local v5, "ret":I
    :try_start_0
    const-string v6, "Xiaomi"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 147
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v6, "android.os.SystemProperties"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 150
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v6

    .line 151
    const/4 v6, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v6

    .line 152
    const-string v6, "getInt"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 153
    .local v2, "getInt":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 154
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v6

    .line 155
    const/4 v6, 0x1

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v4, v6

    .line 156
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 162
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-ne v7, v5, :cond_1

    move v6, v7

    :goto_1
    return v6

    :cond_1
    move v6, v8

    goto :goto_1

    .line 159
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static hasNotchScreen(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 133
    const-string v0, "ro.miui.notch"

    invoke-static {p0, v0}, Lcom/tencent/msdk/webview/AndroidNotchScreen;->hasNotchAtXiaomi(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/msdk/webview/AndroidNotchScreen;->hasNotchAtHuawei(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/msdk/webview/AndroidNotchScreen;->hasNotchAtOppo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/msdk/webview/AndroidNotchScreen;->hasNotchAtVivo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
