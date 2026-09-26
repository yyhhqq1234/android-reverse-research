.class public Lcom/netease/mpay/b/r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/netease/mpay/server/response/e$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/mpay/b/ak;->ac:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mpay/server/response/e$b;

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/response/e$b;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    sget-object v0, Lcom/netease/mpay/b/ak;->ad:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/response/e$b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/netease/mpay/b/ak;->ae:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->af:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netease/mpay/server/response/e$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    iput-object p2, p0, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

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


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->ac:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    iget-object v1, v1, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/netease/mpay/b/ak;->ad:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    invoke-virtual {v1}, Lcom/netease/mpay/server/response/e$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/netease/mpay/b/ak;->ae:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->af:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
