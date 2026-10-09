.class public Lcom/subao/common/l/b$d;
.super Lcom/subao/common/l/b$f;
.source "QosHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final d:I


# direct methods
.method public constructor <init>(Lcom/subao/common/l/c$e;Ljava/lang/String;Lcom/subao/common/l/b$a;I)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/l/b$f;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;Lcom/subao/common/l/b$a;)V

    .line 268
    iput p4, p0, Lcom/subao/common/l/b$d;->d:I

    .line 269
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Lcom/subao/common/l/c$h;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/subao/common/l/b$d;->b(Ljava/lang/String;)Lcom/subao/common/l/c$j;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Lcom/subao/common/l/c$j;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lcom/subao/common/l/c$j;

    iget-object v1, p0, Lcom/subao/common/l/b$d;->a:Lcom/subao/common/l/c$e;

    iget v2, p0, Lcom/subao/common/l/b$d;->d:I

    invoke-direct {v0, v1, p1, v2}, Lcom/subao/common/l/c$j;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/subao/common/l/b$f;->run()V

    return-void
.end method
