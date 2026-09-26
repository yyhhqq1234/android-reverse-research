.class public Lcom/netease/epay/sdk/base/view/SendSmsButton;
.super Lcom/netease/epay/sdk/base/view/StrokeColorButton;
.source "SendSmsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;
    }
.end annotation


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private initString:Ljava/lang/String;

.field public isClick:Z

.field private listener:Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->isClick:Z

    .line 15
    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->initString:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/netease/epay/sdk/base/view/SendSmsButton$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/base/view/SendSmsButton$1;-><init>(Lcom/netease/epay/sdk/base/view/SendSmsButton;JJ)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->countDownTimer:Landroid/os/CountDownTimer;

    .line 24
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->isClick:Z

    .line 15
    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->initString:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/netease/epay/sdk/base/view/SendSmsButton$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/base/view/SendSmsButton$1;-><init>(Lcom/netease/epay/sdk/base/view/SendSmsButton;JJ)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->countDownTimer:Landroid/os/CountDownTimer;

    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/SendSmsButton;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->initString:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->initString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0, p0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    .line 59
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->onDetachedFromWindow()V

    .line 77
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 78
    return-void
.end method

.method public resetColdTime()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    .line 83
    return-void
.end method

.method public sendSms(Z)V
    .locals 1
    .param p1, "isTrueSend"    # Z

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->isClick:Z

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->listener:Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->listener:Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;->sendSms()V

    .line 54
    :cond_0
    return-void
.end method

.method public setInitText(Ljava/lang/String;)V
    .locals 0
    .param p1, "initText"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->initString:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/SendSmsButton;->listener:Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;

    .line 44
    return-void
.end method
