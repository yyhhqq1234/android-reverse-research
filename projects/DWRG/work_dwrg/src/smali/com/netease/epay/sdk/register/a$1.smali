.class Lcom/netease/epay/sdk/register/a$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "RegisterDeviceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/register/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/model/RegisterData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/register/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/register/a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/netease/epay/sdk/register/a$1;->a:Lcom/netease/epay/sdk/register/a;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/RegisterData;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->sessionId:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    .line 101
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->accountId:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    .line 102
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->shortPwdEncodeFactor:Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;->word:Lcom/netease/epay/sdk/model/Word;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/Word;->index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/netease/epay/sdk/base/core/BaseData;->wordStart:I

    .line 103
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->shortPwdEncodeFactor:Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;->word:Lcom/netease/epay/sdk/model/Word;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/Word;->range:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/core/BaseData;->wordStart:I

    add-int/2addr v0, v1

    sput v0, Lcom/netease/epay/sdk/base/core/BaseData;->wordEnd:I

    .line 104
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->shortPwdEncodeFactor:Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;->m:Lcom/netease/epay/sdk/model/Word;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/Word;->index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/netease/epay/sdk/base/core/BaseData;->mStart:I

    .line 105
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->shortPwdEncodeFactor:Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;->m:Lcom/netease/epay/sdk/model/Word;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/Word;->range:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/core/BaseData;->mStart:I

    add-int/2addr v0, v1

    sput v0, Lcom/netease/epay/sdk/base/core/BaseData;->mEnd:I

    .line 106
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->shortPwdEncodeFactor:Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;->n:Lcom/netease/epay/sdk/model/Word;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/Word;->index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/netease/epay/sdk/base/core/BaseData;->nStart:I

    .line 107
    iget-object v0, p2, Lcom/netease/epay/sdk/model/RegisterData;->shortPwdEncodeFactor:Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;->n:Lcom/netease/epay/sdk/model/Word;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/Word;->range:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/core/BaseData;->nStart:I

    add-int/2addr v0, v1

    sput v0, Lcom/netease/epay/sdk/base/core/BaseData;->nEnd:I

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a$1;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/register/a;->a(Lcom/netease/epay/sdk/register/a;)Lcom/netease/epay/sdk/register/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/epay/sdk/register/a$a;->a()V

    .line 109
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a$1;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/register/a;->b(Lcom/netease/epay/sdk/register/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a$1;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/register/a;->a(Lcom/netease/epay/sdk/register/a;Landroid/support/v4/app/FragmentActivity;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a$1;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/register/a;->c(Lcom/netease/epay/sdk/register/a;)V

    .line 113
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a$1;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/register/a;->d(Lcom/netease/epay/sdk/register/a;)V

    .line 114
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 1
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a$1;->a:Lcom/netease/epay/sdk/register/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/register/a;->a(Lcom/netease/epay/sdk/register/a;)Lcom/netease/epay/sdk/register/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/register/a$a;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p2, Lcom/netease/epay/sdk/model/RegisterData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/register/a$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/model/RegisterData;)V

    return-void
.end method
