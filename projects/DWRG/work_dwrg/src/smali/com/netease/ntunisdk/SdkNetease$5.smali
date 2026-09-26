.class Lcom/netease/ntunisdk/SdkNetease$5;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/social/GetFriendsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease;->queryMyAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;

.field final synthetic val$account:Lcom/netease/ntunisdk/base/AccountInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$5;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 910
    const-string v0, "UniSDK netease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5fae\u535a\u8d26\u53f7\u4fe1\u606f\u5931\u8d25,code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$5;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    .line 912
    return-void
.end method

.method public onSuccessed([Lcom/netease/mpay/social/Friend;)V
    .locals 4
    .param p1, "friends"    # [Lcom/netease/mpay/social/Friend;

    .prologue
    const/4 v3, 0x0

    .line 899
    const-string v0, "UniSDK netease"

    const-string v1, "\u83b7\u53d6\u5fae\u535a\u8d26\u53f7\u4fe1\u606f\u6210\u529f"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/netease/mpay/social/Friend;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/netease/mpay/social/Friend;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v3

    iget v2, v2, Lcom/netease/mpay/social/Friend;->mUserType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setIdType(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/netease/mpay/social/Friend;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v3

    iget v2, v2, Lcom/netease/mpay/social/Friend;->mRelationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setRelationType(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$5;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease$5;->val$account:Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    .line 906
    return-void
.end method
