.class public final Lc/t/m/g/bn;
.super Lc/t/m/g/bi;


# instance fields
.field a:Lc/t/m/g/z;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    invoke-direct {p0}, Lc/t/m/g/bi;-><init>()V

    new-instance v0, Lc/t/m/g/z;

    invoke-direct {v0}, Lc/t/m/g/z;-><init>()V

    iput-object v0, p0, Lc/t/m/g/bn;->a:Lc/t/m/g/z;

    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lc/t/m/g/bn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "halley_cloud_param_content"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lc/t/m/g/bn;->a:Lc/t/m/g/z;

    invoke-virtual {v1, v0}, Lc/t/m/g/z;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    .line 1000
    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lc/t/m/g/bn;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "halley_cloud_param_content"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Halley_Cloud_Param_Content_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lc/t/m/g/l;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_for_SettingsHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc/t/m/g/l;->b()Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lc/t/m/g/be;)V
    .locals 3

    .prologue
    .line 0
    const-string v0, "confVersion"

    iget-object v1, p0, Lc/t/m/g/bn;->a:Lc/t/m/g/z;

    invoke-virtual {v1}, Lc/t/m/g/z;->c()Ljava/lang/String;

    move-result-object v1

    .line 3000
    iget-object v2, p1, Lc/t/m/g/be;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    const-string v0, "Setting"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/t/m/g/bn;->a:Lc/t/m/g/z;

    invoke-virtual {v1, v0}, Lc/t/m/g/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/bn;->a:Lc/t/m/g/z;

    iget-object v0, v0, Lc/t/m/g/z;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4000
    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lc/t/m/g/bn;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "halley_cloud_param_content"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5000
    :cond_0
    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/t/m/g/bo;

    invoke-direct {v1, p0}, Lc/t/m/g/bo;-><init>(Lc/t/m/g/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6000
    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/t/m/g/bo;

    invoke-direct {v1, p0}, Lc/t/m/g/bo;-><init>(Lc/t/m/g/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    .line 7000
    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lc/t/m/g/bo;

    invoke-direct {v2, p0}, Lc/t/m/g/bo;-><init>(Lc/t/m/g/bn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    .line 2000
    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/t/m/g/bo;

    invoke-direct {v1, p0}, Lc/t/m/g/bo;-><init>(Lc/t/m/g/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "settings"

    return-object v0
.end method
