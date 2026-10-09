.class Lcom/ironsource/lc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/lc;->a(Lcom/ironsource/mg;Ljava/lang/String;IILcom/ironsource/mn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mn;

.field final synthetic b:Lcom/ironsource/lc;


# direct methods
.method constructor <init>(Lcom/ironsource/lc;Lcom/ironsource/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/lc$a;->b:Lcom/ironsource/lc;

    iput-object p2, p0, Lcom/ironsource/lc$a;->a:Lcom/ironsource/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mg;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/lc$a;->a:Lcom/ironsource/mn;

    invoke-interface {v0, p1}, Lcom/ironsource/mn;->a(Lcom/ironsource/mg;)V

    :try_start_0
    new-instance v0, Lcom/ironsource/lc$a$a;

    invoke-direct {v0, p0}, Lcom/ironsource/lc$a$a;-><init>(Lcom/ironsource/lc$a;)V

    iget-object v1, p0, Lcom/ironsource/lc$a;->b:Lcom/ironsource/lc;

    invoke-static {v1}, Lcom/ironsource/lc;->a(Lcom/ironsource/lc;)Lcom/ironsource/ml;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/ml;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ironsource/mg;Lcom/ironsource/eg;)V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/lc$a;->a:Lcom/ironsource/mn;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/mn;->a(Lcom/ironsource/mg;Lcom/ironsource/eg;)V

    return-void
.end method
