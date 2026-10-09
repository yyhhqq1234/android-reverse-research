.class Lcom/google/atap/tangoservice/Tango$5;
.super Ljava/lang/Object;
.source "Tango.java"

# interfaces
.implements Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/atap/tangoservice/Tango;->connectNativeOnFrameAvailableListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/atap/tangoservice/Tango;


# direct methods
.method constructor <init>(Lcom/google/atap/tangoservice/Tango;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/google/atap/tangoservice/Tango$5;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;I)V
    .locals 0
    .param p1, "buffer"    # Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;
    .param p2, "cameraId"    # I

    .prologue
    .line 671
    invoke-static {p1, p2}, Lcom/google/atap/tangoservice/Tango;->nativeOnFrameAvailable(Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;I)V

    .line 672
    return-void
.end method
