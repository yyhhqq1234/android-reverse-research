.class Lcom/netease/ntunisdk/SdkNetease$6;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/social/GetFriendsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease;->queryFriendList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;

.field final synthetic val$friendList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$6;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNetease$6;->val$friendList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 951
    const-string v0, "UniSDK netease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u597d\u53cb\u5217\u8868\u5931\u8d25,code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$6;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease$6;->val$friendList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->queryFriendListFinished(Ljava/util/List;)V

    .line 953
    return-void
.end method

.method public onSuccessed([Lcom/netease/mpay/social/Friend;)V
    .locals 4
    .param p1, "friends"    # [Lcom/netease/mpay/social/Friend;

    .prologue
    .line 931
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 932
    const-string v2, "UniSDK netease"

    const-string v3, "\u83b7\u53d6\u597d\u53cb\u5217\u8868\u6210\u529f"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 934
    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    .line 935
    .local v0, "account":Lcom/netease/ntunisdk/base/AccountInfo;
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/netease/mpay/social/Friend;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    .line 936
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/netease/mpay/social/Friend;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    iget v3, v3, Lcom/netease/mpay/social/Friend;->mUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setIdType(Ljava/lang/String;)V

    .line 938
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/netease/mpay/social/Friend;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    iget v3, v3, Lcom/netease/mpay/social/Friend;->mRelationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setRelationType(Ljava/lang/String;)V

    .line 940
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setInGame(Z)V

    .line 941
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease$6;->val$friendList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    .end local v0    # "account":Lcom/netease/ntunisdk/base/AccountInfo;
    .end local v1    # "i":I
    :cond_0
    const-string v2, "UniSDK netease"

    const-string v3, "\u597d\u53cb\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease$6;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNetease$6;->val$friendList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->queryFriendListFinished(Ljava/util/List;)V

    .line 947
    return-void
.end method
