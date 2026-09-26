.class public Lcom/netease/codescanner/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final a:Lcom/netease/codescanner/widget/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/netease/codescanner/widget/ViewfinderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/codescanner/widget/a;->a:Lcom/netease/codescanner/widget/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/codescanner/widget/a;->a:Lcom/netease/codescanner/widget/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/netease/codescanner/widget/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
