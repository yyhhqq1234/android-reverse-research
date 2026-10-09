.class Lcom/google/atap/tangoservice/Tango$4;
.super Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub;
.source "Tango.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/atap/tangoservice/Tango;->connectOnImageAvailable(I)V
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
    .line 636
    iput-object p1, p0, Lcom/google/atap/tangoservice/Tango$4;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-direct {p0}, Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(ILcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "imageWithDataSetToNull"    # Lcom/google/atap/tangoservice/TangoImage;
    .param p3, "metadata"    # Lcom/google/atap/tangoservice/TangoCameraMetadata;
    .param p4, "byteBuffer0"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p5, "byteBuffer1"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p6, "byteBuffer2"    # Lcom/google/tango/loader/IObjectWrapper;
    .param p7, "byteBuffer3"    # Lcom/google/tango/loader/IObjectWrapper;

    .prologue
    .line 643
    move-object v0, p2

    .line 644
    .local v0, "image":Lcom/google/atap/tangoservice/TangoImage;
    iget-object v2, v0, Lcom/google/atap/tangoservice/TangoImage;->planeData:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const-class v1, Ljava/nio/ByteBuffer;

    .line 645
    invoke-static {p4, v1}, Lcom/google/tango/loader/ObjectWrapper;->unwrap(Lcom/google/tango/loader/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    aput-object v1, v2, v3

    .line 646
    iget-object v2, v0, Lcom/google/atap/tangoservice/TangoImage;->planeData:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    const-class v1, Ljava/nio/ByteBuffer;

    .line 647
    invoke-static {p5, v1}, Lcom/google/tango/loader/ObjectWrapper;->unwrap(Lcom/google/tango/loader/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    aput-object v1, v2, v3

    .line 648
    iget-object v2, v0, Lcom/google/atap/tangoservice/TangoImage;->planeData:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    const-class v1, Ljava/nio/ByteBuffer;

    .line 649
    invoke-static {p6, v1}, Lcom/google/tango/loader/ObjectWrapper;->unwrap(Lcom/google/tango/loader/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    aput-object v1, v2, v3

    .line 650
    iget-object v2, v0, Lcom/google/atap/tangoservice/TangoImage;->planeData:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    const-class v1, Ljava/nio/ByteBuffer;

    .line 651
    invoke-static {p7, v1}, Lcom/google/tango/loader/ObjectWrapper;->unwrap(Lcom/google/tango/loader/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    aput-object v1, v2, v3

    .line 653
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango$4;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango$4;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p1}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;->onImageAvailable(Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V

    .line 656
    :cond_0
    return-void
.end method
