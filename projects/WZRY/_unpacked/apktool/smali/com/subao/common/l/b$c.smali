.class public Lcom/subao/common/l/b$c;
.super Lcom/subao/common/l/b$f;
.source "QosHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/subao/common/l/c$e;Ljava/lang/String;Lcom/subao/common/l/b$a;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/l/b$f;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;Lcom/subao/common/l/b$a;)V

    .line 245
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/subao/common/l/c$h;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/subao/common/l/c$i;

    iget-object v1, p0, Lcom/subao/common/l/b$c;->a:Lcom/subao/common/l/c$e;

    invoke-direct {v0, v1, p1}, Lcom/subao/common/l/c$i;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Lcom/subao/common/l/b$f;->run()V

    return-void
.end method
