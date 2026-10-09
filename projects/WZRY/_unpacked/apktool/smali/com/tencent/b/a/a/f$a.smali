.class public Lcom/tencent/b/a/a/f$a;
.super Landroid/widget/FrameLayout$LayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/b/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field private b:I

.field private c:Lcom/tencent/a/a/a/e;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(IILcom/tencent/a/a/a/e;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/b/a/a/f$a;->a:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/tencent/b/a/a/f$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/b/a/a/f$a;->c:Lcom/tencent/a/a/a/e;

    iput v1, p0, Lcom/tencent/b/a/a/f$a;->d:I

    iput v1, p0, Lcom/tencent/b/a/a/f$a;->e:I

    iput v1, p0, Lcom/tencent/b/a/a/f$a;->a:I

    invoke-virtual {p0, p3}, Lcom/tencent/b/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)V

    iput p4, p0, Lcom/tencent/b/a/a/f$a;->d:I

    iput p5, p0, Lcom/tencent/b/a/a/f$a;->e:I

    iput p6, p0, Lcom/tencent/b/a/a/f$a;->b:I

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/b/a/a/f$a;->a:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/tencent/b/a/a/f$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/b/a/a/f$a;->c:Lcom/tencent/a/a/a/e;

    iput v1, p0, Lcom/tencent/b/a/a/f$a;->d:I

    iput v1, p0, Lcom/tencent/b/a/a/f$a;->e:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/b/a/a/f$a;)I
    .locals 1

    iget v0, p0, Lcom/tencent/b/a/a/f$a;->d:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/b/a/a/f$a;)I
    .locals 1

    iget v0, p0, Lcom/tencent/b/a/a/f$a;->e:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/b/a/a/f$a;)I
    .locals 1

    iget v0, p0, Lcom/tencent/b/a/a/f$a;->b:I

    return v0
.end method


# virtual methods
.method public a()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f$a;->c:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public a(Lcom/tencent/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/a/f$a;->c:Lcom/tencent/a/a/a/e;

    return-void
.end method
