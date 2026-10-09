.class Lcom/subao/common/a/c$w$a;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c$w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/a/a;

.field private final b:Lcom/subao/common/i/g;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/subao/common/a/a;Lcom/subao/common/i/g;I)V
    .locals 0

    .prologue
    .line 1912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1913
    iput-object p1, p0, Lcom/subao/common/a/c$w$a;->a:Lcom/subao/common/a/a;

    .line 1914
    iput-object p2, p0, Lcom/subao/common/a/c$w$a;->b:Lcom/subao/common/i/g;

    .line 1915
    iput p3, p0, Lcom/subao/common/a/c$w$a;->c:I

    .line 1916
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/subao/common/a/c$w$a;->a:Lcom/subao/common/a/a;

    invoke-interface {v0}, Lcom/subao/common/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    invoke-static {}, Lcom/subao/common/i/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 1922
    invoke-static {v0}, Lcom/subao/common/e/am;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/subao/common/a/c$w;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/subao/common/a/c$w$a;->b:Lcom/subao/common/i/g;

    iget v1, p0, Lcom/subao/common/a/c$w$a;->c:I

    invoke-static {v0, v1}, Lcom/subao/common/a/c$w;->a(Lcom/subao/common/i/g;I)V

    .line 1926
    :cond_0
    invoke-static {}, Lcom/subao/common/a/c$w;->a()V

    .line 1927
    return-void
.end method
