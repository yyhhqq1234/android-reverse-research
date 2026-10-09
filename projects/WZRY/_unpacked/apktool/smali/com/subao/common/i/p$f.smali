.class Lcom/subao/common/i/p$f;
.super Lcom/subao/common/i/p$b;
.source "Message_Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/i/p$b;-><init>(ZZLjava/lang/Integer;)V

    .line 289
    iput-object p4, p0, Lcom/subao/common/i/p$f;->d:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method protected a(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 303
    const-string v0, "isp"

    iget-object v1, p0, Lcom/subao/common/i/p$f;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 304
    return-void
.end method

.method protected a(Lcom/subao/common/i/p$b;)Z
    .locals 2

    .prologue
    .line 294
    instance-of v0, p1, Lcom/subao/common/i/p$f;

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 297
    :cond_0
    check-cast p1, Lcom/subao/common/i/p$f;

    .line 298
    iget-object v0, p0, Lcom/subao/common/i/p$f;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/subao/common/i/p$f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
