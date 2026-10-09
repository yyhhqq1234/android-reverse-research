.class Lcom/subao/common/c/f$b;
.super Ljava/lang/Object;
.source "TrialRequester.java"

# interfaces
.implements Lcom/subao/common/c/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lcom/subao/common/intf/ProductList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/subao/common/c/f$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/c/f$1;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/subao/common/c/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/subao/common/intf/ProductList;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 103
    iput p1, p0, Lcom/subao/common/c/f$b;->a:I

    .line 104
    iput-object p2, p0, Lcom/subao/common/c/f$b;->b:Lcom/subao/common/intf/ProductList;

    .line 105
    return-void
.end method
