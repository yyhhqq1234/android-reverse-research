.class Lcom/netease/ntunisdk/SdkNetease$1;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/ExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease;->openExitView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNetease;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$1;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$1;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/SdkNetease;->exitDone()V

    .line 773
    return-void
.end method
