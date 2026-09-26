.class Lcom/netease/epay/sdk/psw/verifypwd/g$1;
.super Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.source "VerifyShortPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/verifypwd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/verifypwd/g;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/verifypwd/g;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/verifypwd/g$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/g;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength(Ljava/lang/String;)V
    .locals 2
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/g$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/g;

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/verifypwd/g;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method
