.class Lcom/google/atap/tangoservice/TangoVhs$1;
.super Ljava/lang/Object;
.source "TangoVhs.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/atap/tangoservice/TangoVhs;->connect(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/atap/tangoservice/TangoVhs;

.field final synthetic val$runOnTangoReady:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/atap/tangoservice/TangoVhs;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/atap/tangoservice/TangoVhs;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/atap/tangoservice/TangoVhs$1;->this$0:Lcom/google/atap/tangoservice/TangoVhs;

    iput-object p2, p0, Lcom/google/atap/tangoservice/TangoVhs$1;->val$runOnTangoReady:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 58
    const-string v0, "TangoVhs"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoVhs$1;->this$0:Lcom/google/atap/tangoservice/TangoVhs;

    invoke-static {p2}, Lcom/google/atap/tangoservice/ITangoVhs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/atap/tangoservice/ITangoVhs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/atap/tangoservice/TangoVhs;->access$002(Lcom/google/atap/tangoservice/TangoVhs;Lcom/google/atap/tangoservice/ITangoVhs;)Lcom/google/atap/tangoservice/ITangoVhs;

    .line 60
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoVhs$1;->val$runOnTangoReady:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoVhs$1;->this$0:Lcom/google/atap/tangoservice/TangoVhs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/atap/tangoservice/TangoVhs;->access$002(Lcom/google/atap/tangoservice/TangoVhs;Lcom/google/atap/tangoservice/ITangoVhs;)Lcom/google/atap/tangoservice/ITangoVhs;

    .line 64
    return-void
.end method
