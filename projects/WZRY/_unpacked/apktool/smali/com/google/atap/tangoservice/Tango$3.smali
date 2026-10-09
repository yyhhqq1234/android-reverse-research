.class Lcom/google/atap/tangoservice/Tango$3;
.super Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub;
.source "Tango.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/atap/tangoservice/Tango;->experimentalConnectOnFrameListener(ILcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/atap/tangoservice/Tango;

.field final synthetic val$finalizedOnFrameAvailableListener:Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;


# direct methods
.method constructor <init>(Lcom/google/atap/tangoservice/Tango;Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/google/atap/tangoservice/Tango$3;->this$0:Lcom/google/atap/tangoservice/Tango;

    iput-object p2, p0, Lcom/google/atap/tangoservice/Tango$3;->val$finalizedOnFrameAvailableListener:Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;

    invoke-direct {p0}, Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(IIIJDILcom/google/tango/loader/IObjectWrapper;IJ)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "frameNumber"    # J
    .param p6, "timestamp"    # D
    .param p8, "format"    # I
    .param p9, "byteBuffer"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p10, "cameraId"    # I
    .param p11, "exposureDurationNs"    # J

    .prologue
    .line 608
    new-instance v2, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;

    const-class v3, Ljava/nio/ByteBuffer;

    .line 610
    move-object/from16 v0, p9

    invoke-static {v0, v3}, Lcom/google/tango/loader/ObjectWrapper;->unwrap(Lcom/google/tango/loader/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-wide/from16 v12, p11

    invoke-direct/range {v2 .. v13}, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;-><init>(IIIJDILjava/nio/ByteBuffer;J)V

    .line 612
    .local v2, "imageBuffer":Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango$3;->val$finalizedOnFrameAvailableListener:Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;

    move/from16 v0, p10

    invoke-interface {v3, v2, v0}, Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;->onFrameAvailable(Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;I)V

    .line 613
    return-void
.end method
