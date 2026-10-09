.class Lcom/subao/common/a/d$2;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/d;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/subao/common/a/d;


# direct methods
.method constructor <init>(Lcom/subao/common/a/d;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/subao/common/a/d$2;->d:Lcom/subao/common/a/d;

    iput p2, p0, Lcom/subao/common/a/d$2;->a:I

    iput-object p3, p0, Lcom/subao/common/a/d$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/subao/common/a/d$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/subao/common/a/d$2;->d:Lcom/subao/common/a/d;

    invoke-static {v0}, Lcom/subao/common/a/d;->a(Lcom/subao/common/a/d;)Lcom/subao/common/b/b$c;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/a/d$2;->a:I

    iget-object v2, p0, Lcom/subao/common/a/d$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/a/d$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/a/d$2;->d:Lcom/subao/common/a/d;

    invoke-static {v4}, Lcom/subao/common/a/d;->b(Lcom/subao/common/a/d;)Lcom/subao/common/b/d;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V

    .line 101
    return-void
.end method
