.class Lcom/netease/epay/sdk/pay/ui/card/a$2;
.super Ljava/lang/Object;
.source "AddCard1Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/a;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/a$2;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doneClick()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a$2;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a$2;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;->exitNotify(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V

    .line 135
    :cond_0
    return-void
.end method
