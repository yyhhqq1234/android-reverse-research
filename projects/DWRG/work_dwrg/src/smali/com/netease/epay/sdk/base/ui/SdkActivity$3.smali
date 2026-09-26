.class Lcom/netease/epay/sdk/base/ui/SdkActivity$3;
.super Ljava/lang/Object;
.source "SdkActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/ui/SdkActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/SdkActivity;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/SdkActivity;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;->this$0:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iput p2, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;->val$requestCode:I

    iput-object p3, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;->this$0:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/AppUtils;->startAppDetailSettingPage(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;->this$0:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget v1, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;->val$requestCode:I

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/SdkActivity$3;->val$permission:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onSDKPermissionDenied(ILjava/lang/String;)V

    .line 170
    return-void
.end method
