.class Lcom/tencent/tp/a/aj;
.super Landroid/os/Handler;


# instance fields
.field private a:I

.field private b:Lcom/tencent/tp/a/ai$a;


# direct methods
.method public constructor <init>(ILcom/tencent/tp/a/ai$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput p1, p0, Lcom/tencent/tp/a/aj;->a:I

    iput-object p2, p0, Lcom/tencent/tp/a/aj;->b:Lcom/tencent/tp/a/ai$a;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/aj;->b:Lcom/tencent/tp/a/ai$a;

    iget v1, p0, Lcom/tencent/tp/a/aj;->a:I

    invoke-interface {v0, v1}, Lcom/tencent/tp/a/ai$a;->a(I)V

    return-void
.end method
