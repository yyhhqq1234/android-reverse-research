.class Lcom/subao/common/a/d$8;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Lcom/subao/common/l/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 222
    iput-object p1, p0, Lcom/subao/common/a/d$8;->a:Lcom/subao/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/c$c;)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/subao/common/a/d$8;->a:Lcom/subao/common/a/d;

    invoke-static {v0}, Lcom/subao/common/a/d;->c(Lcom/subao/common/a/d;)Lcom/subao/common/g/c;

    move-result-object v0

    iget v1, p2, Lcom/subao/common/l/c$c;->a:I

    iget v2, p2, Lcom/subao/common/l/c$c;->e:I

    iget v3, p2, Lcom/subao/common/l/c$c;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/subao/common/g/c;->a(III)V

    .line 226
    return-void
.end method
