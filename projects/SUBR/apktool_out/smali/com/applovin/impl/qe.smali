.class public abstract Lcom/applovin/impl/qe;
.super Lcom/applovin/impl/re;
.source "SourceFile"


# instance fields
.field private a:Lcom/applovin/impl/se;

.field private b:Landroid/database/DataSetObserver;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ListView;

.field private f:Lcom/applovin/impl/o;


# direct methods
.method public static synthetic $r8$lambda$oiVH3gJlLHFby2h1Rbc0_BsUyb8(Lcom/applovin/impl/qe;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/qe;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/applovin/impl/re;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/applovin/impl/qe;->f:Lcom/applovin/impl/o;

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Lcom/applovin/impl/o;->b()V

    .line 813
    iget-object v0, p0, Lcom/applovin/impl/qe;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/impl/qe;->f:Lcom/applovin/impl/o;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lcom/applovin/impl/qe;->f:Lcom/applovin/impl/o;

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/Context;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    invoke-virtual {v0}, Lcom/applovin/impl/se;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    invoke-virtual {v1}, Lcom/applovin/impl/se;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/yp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/qe;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/applovin/impl/qe;->a()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/qe;Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/applovin/impl/qe;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/qe;)Lcom/applovin/impl/se;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 734
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    invoke-virtual {v0}, Lcom/applovin/impl/se;->o()Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 737
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 738
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 739
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v2, "Mediation Debugger logs"

    .line 740
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "MAX Mediation Debugger logs"

    .line 741
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 743
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    invoke-virtual {v0}, Lcom/applovin/impl/se;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    invoke-virtual {v0}, Lcom/applovin/impl/se;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/se;->b(Z)V

    .line 412
    new-instance v0, Lcom/applovin/impl/qe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/qe$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/qe;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 336
    invoke-direct {p0}, Lcom/applovin/impl/qe;->a()V

    .line 341
    new-instance v0, Lcom/applovin/impl/o;

    const/16 v1, 0x32

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/o;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/applovin/impl/qe;->f:Lcom/applovin/impl/o;

    const v1, -0x333334

    .line 342
    invoke-virtual {v0, v1}, Lcom/applovin/impl/o;->setColor(I)V

    .line 344
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 345
    iget-object v1, p0, Lcom/applovin/impl/qe;->c:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/impl/qe;->f:Lcom/applovin/impl/o;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v0, p0, Lcom/applovin/impl/qe;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/impl/qe;->f:Lcom/applovin/impl/o;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/applovin/impl/qe;->f:Lcom/applovin/impl/o;

    invoke-virtual {v0}, Lcom/applovin/impl/o;->a()V

    return-void
.end method


# virtual methods
.method protected getSdk()Lcom/applovin/impl/sdk/j;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/se;->s()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/applovin/impl/re;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MAX Mediation Debugger"

    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x1020002

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/applovin/impl/qe;->c:Landroid/widget/FrameLayout;

    .line 75
    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/qe;->d:Landroid/widget/ListView;

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/applovin/sdk/R$menu;->mediation_debugger_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/applovin/impl/re;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/applovin/impl/qe;->b:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 118
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/dc;->a(Lcom/applovin/impl/dc$a;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    sget v0, Lcom/applovin/sdk/R$id;->action_share:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/applovin/impl/qe;->b()V

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 103
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/se;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/applovin/impl/qe;->c()V

    :cond_0
    return-void
.end method

.method public setListAdapter(Lcom/applovin/impl/se;Lcom/applovin/impl/q;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/qe;->b:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    .line 136
    new-instance p1, Lcom/applovin/impl/qe$a;

    invoke-direct {p1, p0}, Lcom/applovin/impl/qe$a;-><init>(Lcom/applovin/impl/qe;)V

    iput-object p1, p0, Lcom/applovin/impl/qe;->b:Landroid/database/DataSetObserver;

    .line 146
    invoke-direct {p0, p0}, Lcom/applovin/impl/qe;->b(Landroid/content/Context;)V

    .line 148
    iget-object p1, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    iget-object v0, p0, Lcom/applovin/impl/qe;->b:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 149
    iget-object p1, p0, Lcom/applovin/impl/qe;->a:Lcom/applovin/impl/se;

    new-instance v0, Lcom/applovin/impl/qe$b;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/qe$b;-><init>(Lcom/applovin/impl/qe;Lcom/applovin/impl/q;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/dc;->a(Lcom/applovin/impl/dc$a;)V

    return-void
.end method
