.class Lcom/ironsource/k7$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/k7;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/k7;


# direct methods
.method constructor <init>(Lcom/ironsource/k7;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/k7$d;->a:Lcom/ironsource/k7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ironsource/k7$d;->a:Lcom/ironsource/k7;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/ironsource/k7;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/k7$d;->a:Lcom/ironsource/k7;

    iget-object v0, v0, Lcom/ironsource/k7;->s:Lcom/ironsource/b2;

    iget-object v0, v0, Lcom/ironsource/b2;->i:Lcom/ironsource/o4;

    invoke-virtual {v0}, Lcom/ironsource/o4;->a()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/ironsource/k7$d;->a:Lcom/ironsource/k7;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/k7;->a(Lcom/ironsource/k7;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v4, p0, Lcom/ironsource/k7$d;->a:Lcom/ironsource/k7;

    iget-object v4, v4, Lcom/ironsource/k7;->o:Lcom/ironsource/r0;

    invoke-virtual {v4}, Lcom/ironsource/r0;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ironsource/k7$d;->a:Lcom/ironsource/k7;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/k7;->b(Lcom/ironsource/k7;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ironsource/k7$d;->a:Lcom/ironsource/k7;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/ironsource/k7;->a(Lcom/ironsource/k7;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
