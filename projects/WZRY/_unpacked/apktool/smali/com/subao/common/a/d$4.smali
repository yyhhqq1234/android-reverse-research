.class Lcom/subao/common/a/d$4;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/d;->a(IILjava/lang/String;Ljava/lang/String;)V
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

.field final synthetic e:Lcom/subao/common/a/d;


# direct methods
.method constructor <init>(Lcom/subao/common/a/d;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/subao/common/a/d$4;->e:Lcom/subao/common/a/d;

    iput p2, p0, Lcom/subao/common/a/d$4;->a:I

    iput p3, p0, Lcom/subao/common/a/d$4;->b:I

    iput-object p4, p0, Lcom/subao/common/a/d$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/subao/common/a/d$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/subao/common/a/d$4;->e:Lcom/subao/common/a/d;

    invoke-static {v0}, Lcom/subao/common/a/d;->a(Lcom/subao/common/a/d;)Lcom/subao/common/b/b$c;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/a/d$4;->a:I

    iget v2, p0, Lcom/subao/common/a/d$4;->b:I

    iget-object v3, p0, Lcom/subao/common/a/d$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/a/d$4;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/subao/common/a/d$4;->e:Lcom/subao/common/a/d;

    invoke-static {v5}, Lcom/subao/common/a/d;->b(Lcom/subao/common/a/d;)Lcom/subao/common/b/d;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;IILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V

    .line 121
    return-void
.end method
