.class Lcom/ironsource/bg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/bg;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/bg;


# direct methods
.method constructor <init>(Lcom/ironsource/bg;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    iput-object p2, p0, Lcom/ironsource/bg$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/bg$a;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/bg$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    invoke-static {v0}, Lcom/ironsource/bg;->a(Lcom/ironsource/bg;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "callfailreason"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/zp;->q:Lcom/ironsource/zp$a;

    new-instance v2, Lcom/ironsource/fg;

    invoke-direct {v2}, Lcom/ironsource/fg;-><init>()V

    const-string v3, "loadWithUrl | webView is not null"

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    iget-object v2, p0, Lcom/ironsource/bg$a;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ironsource/bg;->a(Lcom/ironsource/bg;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    iget-object v2, p0, Lcom/ironsource/bg$a;->b:Lorg/json/JSONObject;

    const-string v3, "urlForWebView"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/bg;->b(Lcom/ironsource/bg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    invoke-static {v2}, Lcom/ironsource/bg;->a(Lcom/ironsource/bg;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "adViewId"

    iget-object v3, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    invoke-static {v3}, Lcom/ironsource/bg;->b(Lcom/ironsource/bg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    invoke-static {v2}, Lcom/ironsource/bg;->c(Lcom/ironsource/bg;)Lcom/ironsource/zf;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/bg$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/zf;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/ironsource/bg$a;->d:Lcom/ironsource/bg;

    iget-object v3, p0, Lcom/ironsource/bg$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ironsource/zp;->q:Lcom/ironsource/zp$a;

    new-instance v3, Lcom/ironsource/fg;

    invoke-direct {v3}, Lcom/ironsource/fg;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
