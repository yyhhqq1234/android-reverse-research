.class public Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/netease/mpay/widget/webview/js/Config;

.field private c:Lcom/netease/mpay/widget/webview/js/e;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->b:Lcom/netease/mpay/widget/webview/js/Config;

    iput-object p3, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v0, v1

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_1

    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    const-string v3, "?EMPTY_PLACE_HOLDER"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    move v1, v2

    :cond_1
    return v1

    :cond_2
    const-string v3, "?EMPTY_PLACE_HOLDER"

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v3, "?EMPTY_PLACE_HOLDER"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "?EMPTY_PLACE_HOLDER"

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-static {v3}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-static {v3}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static available(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/netease/mpay/widget/webview/js/c;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->b:Lcom/netease/mpay/widget/webview/js/Config;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "orientation"

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->b:Lcom/netease/mpay/widget/webview/js/Config;

    iget-boolean v0, v0, Lcom/netease/mpay/widget/webview/js/Config;->isLandscape:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "version"

    iget-object v2, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->b:Lcom/netease/mpay/widget/webview/js/Config;

    iget-object v2, v2, Lcom/netease/mpay/widget/webview/js/Config;->versionCode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "debug_mode"

    iget-object v2, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->b:Lcom/netease/mpay/widget/webview/js/Config;

    iget-boolean v2, v2, Lcom/netease/mpay/widget/webview/js/Config;->debug:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "app_type"

    iget-object v2, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->b:Lcom/netease/mpay/widget/webview/js/Config;

    iget-object v2, v2, Lcom/netease/mpay/widget/webview/js/Config;->appType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public alert(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: alert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->alert(Ljava/lang/String;)V

    return-void
.end method

.method public changeNavigationTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Js called: changeNavigationTitle"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->changeNavigationTitle(Ljava/lang/String;)V

    return-void
.end method

.method public closeWindow()V
    .locals 1

    const-string v0, "Js called: closeWindow"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->closeWindow()V

    return-void
.end method

.method public dispatch(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg1"

    const-string v3, "?EMPTY_PLACE_HOLDER"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg2"

    const-string v4, "?EMPTY_PLACE_HOLDER"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToMobileChangePage()V
    .locals 1

    const-string v0, "Js called: jumpToMobileChangePage"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->jumpToMobileChangePage()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/widget/webview/js/e;->onError(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onMobileBindRelatedAccount(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onMobileBindRelatedAccount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->onMobileBindRelatedAccount(Ljava/lang/String;)V

    return-void
.end method

.method public onMobileChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onMobileChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->onMobileChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPayFinished(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onPayFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/netease/mpay/widget/webview/js/e;->onPayFinished(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPayRedirect(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onPayRedirect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    const-string v2, "redirect"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/netease/mpay/widget/webview/js/e;->onPayRedirect(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onQrcodeLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onQrcodeLogin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/widget/webview/js/e;->onQrcodeLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReady()V
    .locals 1

    const-string v0, "Js called: onReady"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->onReady()V

    return-void
.end method

.method public onRealnameVerify()V
    .locals 1

    const-string v0, "Js called: onRealnameVerify"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->onRealnameVerify()V

    return-void
.end method

.method public onTokenRefresh(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onTokenRefresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->onTokenRefresh(Ljava/lang/String;)V

    return-void
.end method

.method public onUrsMobileLogin(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onUrsMobileLogin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->onUrsMobileLogin(Ljava/lang/String;)V

    return-void
.end method

.method public onUserLogin(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onUserLogin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->onUserLogin(Ljava/lang/String;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 1

    const-string v0, "Js called: onUserLogout"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->onUserLogout()V

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onVerify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->onVerify(Ljava/lang/String;)V

    return-void
.end method

.method public onVerifyRelatedMobile()V
    .locals 1

    const-string v0, "Js called: onVerifyRelatedMobile"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->onVerifyRelatedMobile()V

    return-void
.end method

.method public onVerifyRelatedMobile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: onVerifyRelatedMobile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->onVerifyRelatedMobile()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->onVerifyRelatedMobile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowClose()V
    .locals 1

    const-string v0, "Js called: onWindowClose"

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/e;->closeWindow()V

    goto :goto_0
.end method

.method public openLinkInNativeBrowser(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: openLinkInNativeBrowser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public saveImage(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: saveToClipboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->saveImage(Ljava/lang/String;)V

    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: saveToClipboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->saveToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method public setBackButton(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: setBackButton "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/widget/webview/js/e;->setBackButton(Z)V

    return-void
.end method

.method public setUrlPrefixForNativeBrowser(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: setUrlPrefixForNativeBrowser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, v2}, Lcom/netease/mpay/widget/webview/js/e;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js called: toast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->c:Lcom/netease/mpay/widget/webview/js/e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/e;->toast(Ljava/lang/String;)V

    return-void
.end method
