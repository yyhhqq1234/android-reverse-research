.class public Lcom/subao/common/e/u$d;
.super Ljava/lang/Object;
.source "HRDataTrans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/subao/common/e/u$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/subao/common/e/u$d;->b:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/subao/common/e/u$d;->c:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    instance-of v2, p1, Lcom/subao/common/e/u$d;

    if-eqz v2, :cond_0

    .line 188
    check-cast p1, Lcom/subao/common/e/u$d;

    .line 189
    iget-object v2, p0, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/u$d;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/u$d;->b:Ljava/lang/String;

    .line 190
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/u$d;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/u$d;->c:Ljava/lang/String;

    .line 191
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
