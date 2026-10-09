.class public Lcom/subao/common/e/ab$b;
.super Lcom/subao/common/e/ab$a;
.source "PortalDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final e:Lcom/subao/common/e/ab$a;


# direct methods
.method public constructor <init>(Lcom/subao/common/e/ab$a;)V
    .locals 4

    .prologue
    .line 479
    const-string v0, "common"

    iget-object v1, p1, Lcom/subao/common/e/ab$a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/subao/common/e/ab$a;->c:Lcom/subao/common/e/al;

    iget-object v3, p1, Lcom/subao/common/e/ab$a;->d:Lcom/subao/common/j/j;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/subao/common/e/ab$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    .line 480
    iput-object p1, p0, Lcom/subao/common/e/ab$b;->e:Lcom/subao/common/e/ab$a;

    .line 481
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/subao/common/f/c;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/subao/common/e/ab$b;->e:Lcom/subao/common/e/ab$a;

    invoke-virtual {v0, p1}, Lcom/subao/common/e/ab$a;->a(Ljava/lang/String;)Lcom/subao/common/f/c;

    move-result-object v0

    return-object v0
.end method
