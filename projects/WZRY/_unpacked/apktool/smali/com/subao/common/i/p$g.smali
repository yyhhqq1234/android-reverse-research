.class Lcom/subao/common/i/p$g;
.super Lcom/subao/common/i/p$b;
.source "Message_Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ZZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/i/p$b;-><init>(ZZLjava/lang/Integer;)V

    .line 317
    iput-object p4, p0, Lcom/subao/common/i/p$g;->d:Ljava/lang/Integer;

    .line 318
    return-void
.end method


# virtual methods
.method protected a(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 330
    const-string/jumbo v0, "traffic"

    iget-object v1, p0, Lcom/subao/common/i/p$g;->d:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 331
    return-void
.end method

.method protected a(Lcom/subao/common/i/p$b;)Z
    .locals 2

    .prologue
    .line 322
    instance-of v0, p1, Lcom/subao/common/i/p$g;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/subao/common/i/p$g;

    iget-object v0, p1, Lcom/subao/common/i/p$g;->d:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/subao/common/i/p$g;->d:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
