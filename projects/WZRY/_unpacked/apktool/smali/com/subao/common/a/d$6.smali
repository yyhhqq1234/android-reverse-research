.class Lcom/subao/common/a/d$6;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Lcom/subao/common/l/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/d;


# direct methods
.method constructor <init>(Lcom/subao/common/a/d;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/subao/common/a/d$6;->a:Lcom/subao/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/c$c;)V
    .locals 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/subao/common/a/d$6;->a:Lcom/subao/common/a/d;

    invoke-static {v0}, Lcom/subao/common/a/d;->c(Lcom/subao/common/a/d;)Lcom/subao/common/g/c;

    move-result-object v0

    iget v1, p2, Lcom/subao/common/l/c$c;->a:I

    iget-object v2, p2, Lcom/subao/common/l/c$c;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/subao/common/l/c$c;->d:Ljava/lang/String;

    iget v4, p2, Lcom/subao/common/l/c$c;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/subao/common/g/c;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 194
    iget-object v0, p2, Lcom/subao/common/l/c$c;->f:Lcom/subao/common/i/n$a;

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/subao/common/a/d$6;->a:Lcom/subao/common/a/d;

    invoke-static {v1}, Lcom/subao/common/a/d;->d(Lcom/subao/common/a/d;)Lcom/subao/common/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    invoke-interface {v1, v0}, Lcom/subao/common/i/g;->a(Lcom/subao/common/i/n$a;)V

    .line 198
    :cond_0
    return-void
.end method
