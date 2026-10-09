.class Loicq/wlogin_sdk/request/WtloginHelper$1;
.super Ljava/lang/Object;
.source "WtloginHelper.java"

# interfaces
.implements Loicq/wlogin_sdk/request/WtTicketPromise;


# instance fields
.field final synthetic this$0:Loicq/wlogin_sdk/request/WtloginHelper;

.field final synthetic val$appid:J

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

.field final synthetic val$sigType:I

.field final synthetic val$userAccount:Ljava/lang/String;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtTicketPromise;Ljava/lang/String;JILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$userAccount:Ljava/lang/String;

    iput-wide p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$appid:J

    iput p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$sigType:I

    iput-object p7, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Done(Loicq/wlogin_sdk/request/Ticket;)V
    .locals 8

    .prologue
    .line 1178
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

    if-eqz v0, :cond_0

    iget-object v7, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$userAccount:Ljava/lang/String;

    iget-wide v2, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$appid:J

    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$sigType:I

    const/4 v5, 0x0

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$params:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper;->GetTicket(Ljava/lang/String;JILoicq/wlogin_sdk/request/WtTicketPromise;Landroid/os/Bundle;)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    invoke-interface {v7, v0}, Loicq/wlogin_sdk/request/WtTicketPromise;->Done(Loicq/wlogin_sdk/request/Ticket;)V

    .line 1179
    :cond_0
    return-void
.end method

.method public Failed(Loicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

    if-eqz v0, :cond_0

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

    invoke-interface {v0, p1}, Loicq/wlogin_sdk/request/WtTicketPromise;->Failed(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 1184
    :cond_0
    return-void
.end method

.method public Timeout(Loicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

    if-eqz v0, :cond_0

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$1;->val$promise:Loicq/wlogin_sdk/request/WtTicketPromise;

    invoke-interface {v0, p1}, Loicq/wlogin_sdk/request/WtTicketPromise;->Timeout(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 1189
    :cond_0
    return-void
.end method
