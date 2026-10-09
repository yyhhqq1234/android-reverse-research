.class Lcom/ironsource/bg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/bg;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/bg;


# direct methods
.method constructor <init>(Lcom/ironsource/bg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    iput-object p2, p0, Lcom/ironsource/bg$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/bg$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v0}, Lcom/ironsource/bg;->a(Lcom/ironsource/bg;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v0}, Lcom/ironsource/bg;->a(Lcom/ironsource/bg;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adViewId"

    iget-object v2, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v2}, Lcom/ironsource/bg;->b(Lcom/ironsource/bg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v1}, Lcom/ironsource/bg;->c(Lcom/ironsource/bg;)Lcom/ironsource/zf;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v1}, Lcom/ironsource/bg;->c(Lcom/ironsource/bg;)Lcom/ironsource/zf;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/bg$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/zf;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v0}, Lcom/ironsource/bg;->c(Lcom/ironsource/bg;)Lcom/ironsource/zf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/zf;->b()V

    :cond_1
    iget-object v0, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/bg;->a(Lcom/ironsource/bg;Lcom/ironsource/zf;)Lcom/ironsource/zf;

    iget-object v0, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v0, v1}, Lcom/ironsource/bg;->a(Lcom/ironsource/bg;Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/ironsource/bg;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "performCleanup | could not destroy ISNAdView webView ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    invoke-static {v3}, Lcom/ironsource/bg;->b(Lcom/ironsource/bg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ironsource/zp;->r:Lcom/ironsource/zp$a;

    new-instance v2, Lcom/ironsource/fg;

    invoke-direct {v2}, Lcom/ironsource/fg;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callfailreason"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/ironsource/bg$b;->c:Lcom/ironsource/bg;

    iget-object v2, p0, Lcom/ironsource/bg$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
