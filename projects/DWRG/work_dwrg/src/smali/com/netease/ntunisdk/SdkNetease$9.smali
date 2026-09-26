.class Lcom/netease/ntunisdk/SdkNetease$9;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/MobileBindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease;->verifyMobile(I)V
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
    .line 1027
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$9;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/netease/mpay/User;)V
    .locals 4
    .param p1, "user"    # Lcom/netease/mpay/User;

    .prologue
    .line 1030
    if-nez p1, :cond_0

    .line 1031
    const-string v0, "UniSDK netease"

    const-string v1, "showMobileBindDialog, not login"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$9;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/SdkNetease;->resetCommonProp()V

    .line 1033
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$9;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->loginDone(I)V

    .line 1042
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$9;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v1, "VERIFY_TYPE"

    iget v2, p1, Lcom/netease/mpay/User;->mobileBindStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 1040
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$9;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const/4 v1, 0x1

    iget v2, p1, Lcom/netease/mpay/User;->mobileBindStatus:I

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->verifyDone(ZILjava/lang/String;)V

    goto :goto_0
.end method
