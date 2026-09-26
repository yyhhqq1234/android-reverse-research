.class public interface abstract Lcom/netease/codescanner/camera/CameraConfigurationManager$CalculatePreviewSizeCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/codescanner/camera/CameraConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CalculatePreviewSizeCallback"
.end annotation


# virtual methods
.method public abstract calculatePreviewSize(Ljava/util/List;Landroid/graphics/Point;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/graphics/Point;",
            ")",
            "Landroid/graphics/Point;"
        }
    .end annotation
.end method
