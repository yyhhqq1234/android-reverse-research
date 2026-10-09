.class Lcom/subao/common/a/d$5;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Lcom/subao/common/j/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/d;->b(I)V
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
    .line 141
    iput-object p1, p0, Lcom/subao/common/a/d$5;->a:Lcom/subao/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/subao/common/j/d$c;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/subao/common/a/d$5;->a:Lcom/subao/common/a/d;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/subao/common/a/d;->a(Lcom/subao/common/a/d;ILcom/subao/common/j/d$c;)V

    .line 145
    return-void
.end method
