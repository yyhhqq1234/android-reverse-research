.class Lcom/netease/epay/sdk/pay/b$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "PayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/b;->b(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/pay/model/PayingResponse;

.field final synthetic c:Lcom/netease/epay/sdk/pay/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/b;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/b$2;->c:Lcom/netease/epay/sdk/pay/b;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/b$2;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/epay/sdk/pay/b$2;->b:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 3
    .param p1, "resp"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 80
    .local p0, "this":Lcom/netease/epay/sdk/pay/b$2;, "Lcom/netease/epay/sdk/pay/b$2;"
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/epay/sdk/pay/c;->g:Lcom/netease/epay/sdk/base/network/IParamsCallback;

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$2;->c:Lcom/netease/epay/sdk/pay/b;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/b$2;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/b$2;->b:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/pay/b;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 75
    .local p0, "this":Lcom/netease/epay/sdk/pay/b$2;, "Lcom/netease/epay/sdk/pay/b$2;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/b$2;->parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z

    .line 76
    return-void
.end method
