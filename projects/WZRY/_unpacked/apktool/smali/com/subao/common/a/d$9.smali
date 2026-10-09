.class Lcom/subao/common/a/d$9;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Lcom/subao/common/e/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/d;->b(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/subao/common/a/d;


# direct methods
.method constructor <init>(Lcom/subao/common/a/d;I)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/subao/common/a/d$9;->b:Lcom/subao/common/a/d;

    iput p2, p0, Lcom/subao/common/a/d$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/subao/common/a/d$9;->b:Lcom/subao/common/a/d;

    invoke-static {v0}, Lcom/subao/common/a/d;->c(Lcom/subao/common/a/d;)Lcom/subao/common/g/c;

    move-result-object v1

    iget v2, p0, Lcom/subao/common/a/d$9;->a:I

    const-string v3, "key_beacon_counter_result"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 280
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
