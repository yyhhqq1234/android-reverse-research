.class abstract Lcom/subao/common/l/b$f;
.super Ljava/lang/Object;
.source "QosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected final a:Lcom/subao/common/l/c$e;

.field protected final b:Lcom/subao/common/l/b$a;

.field final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/subao/common/l/c$e;Ljava/lang/String;Lcom/subao/common/l/b$a;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/subao/common/l/b$f;->a:Lcom/subao/common/l/c$e;

    .line 223
    iput-object p2, p0, Lcom/subao/common/l/b$f;->c:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lcom/subao/common/l/b$f;->b:Lcom/subao/common/l/b$a;

    .line 225
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lcom/subao/common/l/c$h;
.end method

.method public run()V
    .locals 6

    .prologue
    .line 233
    iget-object v0, p0, Lcom/subao/common/l/b$f;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/subao/common/l/b$f;->a(Ljava/lang/String;)Lcom/subao/common/l/c$h;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/subao/common/l/c;->a()Lcom/subao/common/l/c;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/l/b$f;->a:Lcom/subao/common/l/c$e;

    iget-object v2, v2, Lcom/subao/common/l/c$e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/l/b$f;->a:Lcom/subao/common/l/c$e;

    iget v3, v3, Lcom/subao/common/l/c$e;->c:I

    new-instance v4, Lcom/subao/common/l/b$b;

    iget-object v5, p0, Lcom/subao/common/l/b$f;->b:Lcom/subao/common/l/b$a;

    invoke-direct {v4, v5}, Lcom/subao/common/l/b$b;-><init>(Lcom/subao/common/l/b$a;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/subao/common/l/c;->a(Ljava/lang/String;ILcom/subao/common/l/c$h;Lcom/subao/common/l/c$b;)V

    .line 235
    return-void
.end method
