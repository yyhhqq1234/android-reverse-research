.class Lcom/ironsource/si$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/si;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/nn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/la;

.field final synthetic d:Lcom/ironsource/si;


# direct methods
.method constructor <init>(Lcom/ironsource/si;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/la;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/si$a;->d:Lcom/ironsource/si;

    iput-object p2, p0, Lcom/ironsource/si$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/si$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/si$a;->c:Lcom/ironsource/la;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ironsource/si$a;->d:Lcom/ironsource/si;

    invoke-static {v0}, Lcom/ironsource/si;->a(Lcom/ironsource/si;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/si$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/si$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/si$a;->c:Lcom/ironsource/la;

    iget-object v4, p0, Lcom/ironsource/si$a;->d:Lcom/ironsource/si;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/la;Lcom/ironsource/s9;)V

    return-void
.end method
