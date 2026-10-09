.class Lcom/subao/common/a/d$1;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/d;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/subao/common/a/d;


# direct methods
.method constructor <init>(Lcom/subao/common/a/d;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/subao/common/a/d$1;->f:Lcom/subao/common/a/d;

    iput p2, p0, Lcom/subao/common/a/d$1;->a:I

    iput p3, p0, Lcom/subao/common/a/d$1;->b:I

    iput-object p4, p0, Lcom/subao/common/a/d$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/subao/common/a/d$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/subao/common/a/d$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 90
    iget-object v0, p0, Lcom/subao/common/a/d$1;->f:Lcom/subao/common/a/d;

    invoke-static {v0}, Lcom/subao/common/a/d;->a(Lcom/subao/common/a/d;)Lcom/subao/common/b/b$c;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/a/d$1;->a:I

    iget v2, p0, Lcom/subao/common/a/d$1;->b:I

    iget-object v3, p0, Lcom/subao/common/a/d$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/a/d$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/subao/common/a/d$1;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/subao/common/a/d$1;->f:Lcom/subao/common/a/d;

    invoke-static {v6}, Lcom/subao/common/a/d;->b(Lcom/subao/common/a/d;)Lcom/subao/common/b/d;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V

    .line 91
    return-void
.end method
