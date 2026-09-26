.class public Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;
.super Landroid/widget/EditText;
.source "AutoSmsAuthCodeEditText.java"


# instance fields
.field smsObserver:Lcom/netease/epay/sdk/base/util/SmsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->smsObserver:Lcom/netease/epay/sdk/base/util/SmsObserver;

    .line 22
    new-instance v0, Lcom/netease/epay/sdk/base/util/SmsObserver;

    new-instance v1, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText$1;-><init>(Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;)V

    invoke-direct {v0, v1, p1}, Lcom/netease/epay/sdk/base/util/SmsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->smsObserver:Lcom/netease/epay/sdk/base/util/SmsObserver;

    .line 31
    const-string v0, "<small>\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801<small>"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->smsObserver:Lcom/netease/epay/sdk/base/util/SmsObserver;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->smsObserver:Lcom/netease/epay/sdk/base/util/SmsObserver;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/SmsObserver;->registerSMSObserver()V

    .line 48
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->smsObserver:Lcom/netease/epay/sdk/base/util/SmsObserver;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->smsObserver:Lcom/netease/epay/sdk/base/util/SmsObserver;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/SmsObserver;->unregisterSMSObserver()V

    .line 56
    :cond_0
    return-void
.end method
