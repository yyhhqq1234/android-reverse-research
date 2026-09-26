.class public Lcom/netease/epay/sdk/base/util/DelayedTask;
.super Landroid/os/AsyncTask;
.source "DelayedTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static isFinished:Z


# instance fields
.field private final listener:Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;

.field private final secondInMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/epay/sdk/base/util/DelayedTask;->isFinished:Z

    return-void
.end method

.method public constructor <init>(ILcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;)V
    .locals 0
    .param p1, "secondsInMillis"    # I
    .param p2, "listener"    # Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput p1, p0, Lcom/netease/epay/sdk/base/util/DelayedTask;->secondInMillis:I

    .line 18
    iput-object p2, p0, Lcom/netease/epay/sdk/base/util/DelayedTask;->listener:Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/util/DelayedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/epay/sdk/base/util/DelayedTask;->isFinished:Z

    .line 25
    :try_start_0
    iget v0, p0, Lcom/netease/epay/sdk/base/util/DelayedTask;->secondInMillis:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/util/DelayedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/epay/sdk/base/util/DelayedTask;->isFinished:Z

    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/DelayedTask;->listener:Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/DelayedTask;->listener:Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;->onDelayed()V

    .line 38
    :cond_0
    return-void
.end method
