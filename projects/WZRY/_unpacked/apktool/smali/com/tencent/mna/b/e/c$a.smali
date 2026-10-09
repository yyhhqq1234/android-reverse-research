.class public Lcom/tencent/mna/b/e/c$a;
.super Ljava/lang/Object;
.source "RouterQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/e/c$a;->a:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/tencent/mna/b/e/c$a;->b:I

    .line 59
    const-string/jumbo v0, "\u901a\u7545"

    iput-object v0, p0, Lcom/tencent/mna/b/e/c$a;->c:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/e/c$a;->d:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/tencent/mna/b/e/c$a;->e:I

    return-void
.end method
