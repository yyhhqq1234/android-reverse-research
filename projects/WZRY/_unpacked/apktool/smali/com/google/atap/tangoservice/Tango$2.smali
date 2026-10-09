.class Lcom/google/atap/tangoservice/Tango$2;
.super Ljava/lang/Object;
.source "Tango.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/atap/tangoservice/Tango;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/atap/tangoservice/Tango;

.field final synthetic val$runOnTangoReady:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/atap/tangoservice/Tango;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/atap/tangoservice/Tango$2;->this$0:Lcom/google/atap/tangoservice/Tango;

    iput-object p2, p0, Lcom/google/atap/tangoservice/Tango$2;->val$runOnTangoReady:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 394
    const-string v0, "Tango"

    const-string v1, "TangoService connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/google/atap/tangoservice/Tango;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "Tango"

    const-string v1, "Using the pure Java path for Tango client"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$2;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {p2}, Lcom/google/atap/tangoservice/ITango$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/ITango;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/atap/tangoservice/Tango;->access$402(Lcom/google/atap/tangoservice/Tango;Lcom/google/atap/tangoservice/ITango;)Lcom/google/atap/tangoservice/ITango;

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$2;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$500(Lcom/google/atap/tangoservice/Tango;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$2;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/Tango;->disconnect()V

    .line 406
    :goto_1
    return-void

    .line 399
    :cond_0
    invoke-static {p2}, Lcom/google/atap/tango/TangoJNINative;->SetBinder(Landroid/os/IBinder;)I

    goto :goto_0

    .line 404
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango$2;->val$runOnTangoReady:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 409
    return-void
.end method
