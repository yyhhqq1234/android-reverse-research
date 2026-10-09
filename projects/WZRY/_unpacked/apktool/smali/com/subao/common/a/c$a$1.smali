.class Lcom/subao/common/a/c$a$1;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/i/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/c$a;->b()Lcom/subao/common/i/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/c$a;


# direct methods
.method constructor <init>(Lcom/subao/common/a/c$a;)V
    .locals 0

    .prologue
    .line 2070
    iput-object p1, p0, Lcom/subao/common/a/c$a$1;->a:Lcom/subao/common/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2073
    invoke-static {}, Lcom/subao/common/i/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/subao/common/a/c$a$1;->a:Lcom/subao/common/a/c$a;

    invoke-static {v0}, Lcom/subao/common/a/c$a;->a(Lcom/subao/common/a/c$a;)Lcom/subao/common/i/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/subao/common/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    :cond_0
    return-void
.end method
