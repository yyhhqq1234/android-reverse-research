.class Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;
.super Ljava/util/TimerTask;
.source "WtloginHelper.java"


# instance fields
.field final synthetic this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;)V
    .locals 0

    .prologue
    .line 5173
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5176
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;->this$1:Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->start()V

    .line 5177
    return-void
.end method
