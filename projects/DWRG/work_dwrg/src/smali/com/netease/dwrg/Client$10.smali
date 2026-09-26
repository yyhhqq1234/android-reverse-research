.class Lcom/netease/dwrg/Client$10;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->startCameraPreviewCapture(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/netease/dwrg/Client$10;->this$0:Lcom/netease/dwrg/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    .line 1646
    invoke-static {p1, p2, p3}, Lcom/netease/neox/NativeInterface;->NativeOnCameraPreviewCapture([BII)V

    .line 1647
    return-void
.end method
