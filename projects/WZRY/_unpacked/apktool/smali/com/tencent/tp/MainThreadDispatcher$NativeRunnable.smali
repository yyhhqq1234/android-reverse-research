.class public Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/MainThreadDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeRunnable"
.end annotation


# instance fields
.field public callbackFuncPtr:J

.field public clazz_name:Ljava/lang/String;

.field public dataPtr:J

.field public method_cmd_data:[B

.field public method_name:Ljava/lang/String;

.field public method_signature:Ljava/lang/String;

.field public obj_receiver:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->clazz_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->method_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->method_signature:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->method_cmd_data:[B

    iput-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->obj_receiver:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->callbackFuncPtr:J

    iput-wide v2, p0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->dataPtr:J

    return-void
.end method
