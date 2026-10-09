.class public Lcom/subao/common/e/b$a;
.super Ljava/lang/Object;
.source "AccelGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/subao/common/e/b$a;->a:I

    .line 145
    iput p2, p0, Lcom/subao/common/e/b$a;->b:I

    .line 146
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 155
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 156
    goto :goto_0

    .line 157
    :cond_2
    instance-of v2, p1, Lcom/subao/common/e/b$a;

    if-eqz v2, :cond_0

    .line 160
    check-cast p1, Lcom/subao/common/e/b$a;

    .line 161
    iget v2, p0, Lcom/subao/common/e/b$a;->a:I

    iget v3, p1, Lcom/subao/common/e/b$a;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/e/b$a;->b:I

    iget v3, p1, Lcom/subao/common/e/b$a;->b:I

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[startPort=%d, endPort=%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/subao/common/e/b$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/subao/common/e/b$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
