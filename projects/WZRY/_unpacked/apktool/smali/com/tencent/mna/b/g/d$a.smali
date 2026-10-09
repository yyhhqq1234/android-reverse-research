.class public Lcom/tencent/mna/b/g/d$a;
.super Ljava/lang/Object;
.source "RouterProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x67

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput v0, p0, Lcom/tencent/mna/b/g/d$a;->b:I

    .line 643
    iput v0, p0, Lcom/tencent/mna/b/g/d$a;->c:I

    .line 644
    iput v0, p0, Lcom/tencent/mna/b/g/d$a;->d:I

    .line 646
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/g/d$a;->f:Ljava/lang/String;

    return-void
.end method
