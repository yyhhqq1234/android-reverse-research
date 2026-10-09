.class public final Lcom/tencent/a/a/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/a/a/a/e;

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tencent/a/a/a/c$a;->b:F

    return-void
.end method


# virtual methods
.method public final a(F)Lcom/tencent/a/a/a/c$a;
    .locals 0

    iput p1, p0, Lcom/tencent/a/a/a/c$a;->b:F

    return-object p0
.end method

.method public final a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/c$a;
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/a/c$a;->a:Lcom/tencent/a/a/a/e;

    return-object p0
.end method

.method public final a()Lcom/tencent/a/a/a/c;
    .locals 3

    new-instance v0, Lcom/tencent/a/a/a/c;

    iget-object v1, p0, Lcom/tencent/a/a/a/c$a;->a:Lcom/tencent/a/a/a/e;

    iget v2, p0, Lcom/tencent/a/a/a/c$a;->b:F

    invoke-direct {v0, v1, v2}, Lcom/tencent/a/a/a/c;-><init>(Lcom/tencent/a/a/a/e;F)V

    return-object v0
.end method
