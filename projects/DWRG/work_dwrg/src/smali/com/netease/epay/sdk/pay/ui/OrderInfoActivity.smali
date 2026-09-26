.class public Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "OrderInfoActivity.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    .line 93
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;-><init>(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    const-string v1, "query_order_info.htm"

    const/4 v2, 0x1

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;-><init>(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)V

    invoke-static {v1, v0, v2, p0, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 73
    return-void
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 76
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_amount:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->b:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_handfee:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->c:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_name:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->d:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_plat:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->e:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_id:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->f:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_date:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->g:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_behavior:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->h:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_state:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->i:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_order_userNote:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->j:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rl_order_detail:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->k:Landroid/widget/RelativeLayout;

    .line 86
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->iv_order_detail:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->l:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btn_pay:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->n:Landroid/view/View;

    .line 88
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rl_detail:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->m:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method static synthetic c(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->l:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v1, v2, p0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 46
    if-eqz v0, :cond_0

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/epay/sdk/pay/PayController;->c:Z

    .line 51
    :goto_0
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_actv_order_info:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->b()V

    .line 53
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->a()V

    .line 54
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->finish()V

    goto :goto_0
.end method
