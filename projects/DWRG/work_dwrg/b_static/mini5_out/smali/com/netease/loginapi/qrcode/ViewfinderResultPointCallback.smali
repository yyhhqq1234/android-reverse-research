.class public final Lcom/netease/loginapi/qrcode/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field public final viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/ViewfinderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderResultPointCallback;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderResultPointCallback;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/netease/loginapi/qrcode/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
