.class public Lcom/subao/common/e/e$a;
.super Ljava/lang/Object;
.source "AccelNodesDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lcom/subao/common/e/e$a;->a:I

    .line 187
    iput-object p2, p0, Lcom/subao/common/e/e$a;->b:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 200
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 201
    goto :goto_0

    .line 203
    :cond_2
    instance-of v2, p1, Lcom/subao/common/e/e$a;

    if-eqz v2, :cond_0

    .line 206
    check-cast p1, Lcom/subao/common/e/e$a;

    .line 207
    iget v2, p0, Lcom/subao/common/e/e$a;->a:I

    iget v3, p1, Lcom/subao/common/e/e$a;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/e$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/e$a;->b:Ljava/lang/String;

    .line 208
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

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 192
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[Accel Nodes %d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/subao/common/e/e$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
