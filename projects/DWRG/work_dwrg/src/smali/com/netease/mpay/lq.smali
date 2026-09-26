.class public Lcom/netease/mpay/lq;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/lq$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/ad;

.field private e:Lcom/netease/mpay/widget/s;

.field private f:Landroid/content/res/Resources;

.field private g:Lcom/netease/mpay/e/b;

.field private h:Lcom/netease/mpay/e/b/af;

.field private i:Landroid/widget/AutoCompleteTextView;

.field private j:Landroid/widget/ImageView;

.field private k:Ljava/util/ArrayList;

.field private l:Landroid/widget/Button;

.field private m:Lcom/netease/mpay/view/BottomLinkButtons;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/text/TextWatcher;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-boolean v0, p0, Lcom/netease/mpay/lq;->p:Z

    iput-boolean v0, p0, Lcom/netease/mpay/lq;->q:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private A()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->K:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/u;

    iget-object v3, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ad;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/u;-><init>(Lcom/netease/mpay/b/a$a;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/lq;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lq;->h:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method private a(ILcom/netease/mpay/b/al;)V
    .locals 3

    instance-of v0, p2, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-nez v0, :cond_2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Lcom/netease/mpay/b/ao;

    invoke-direct {p0, p2}, Lcom/netease/mpay/lq;->a(Lcom/netease/mpay/b/ao;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v1, v0, Lcom/netease/mpay/b/ad;->e:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v2, Lcom/netease/mpay/User;

    move-object v0, p2

    check-cast v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v2, v0}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v1, v2}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    :cond_1
    check-cast p2, Lcom/netease/mpay/b/ao;

    invoke-virtual {p2}, Lcom/netease/mpay/b/ao;->a()Lcom/netease/mpay/b/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(J)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Lcom/netease/mpay/ma;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/ma;-><init>(Lcom/netease/mpay/lq;JJ)V

    return-void
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/netease/mpay/b/ao;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v2}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mpay/b/ao;->h:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v5}, Lcom/netease/mpay/b/ad;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p1, Lcom/netease/mpay/b/ao;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/b/ao;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ad;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->e:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    invoke-virtual {p1}, Lcom/netease/mpay/b/ao;->a()Lcom/netease/mpay/b/ao;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/lq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/lq;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/lq;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/lq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/lq;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/lq;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lq;->e:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v7, Lcom/netease/mpay/b$a;->e:Lcom/netease/mpay/b$a;

    new-instance v0, Lcom/netease/mpay/b/af;

    iget-object v1, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v1}, Lcom/netease/mpay/b/ad;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/af;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6, v7, v0, v5, v1}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/lq;->z()V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/lq;->y()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->getLocationInWindow([I)V

    aget v0, v3, v1

    aget v5, v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v7, v7

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v5, v6

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private b(ILcom/netease/mpay/b/al;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    :cond_0
    instance-of v0, p2, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p2, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/netease/mpay/b/ao;

    invoke-direct {p0, p2}, Lcom/netease/mpay/lq;->a(Lcom/netease/mpay/b/ao;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/lq;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/lq;->A()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/f/ai;

    iget-object v1, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v2}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ad;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/ls;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/ls;-><init>(Lcom/netease/mpay/lq;Ljava/lang/String;)V

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/ai;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ai;->h()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/lq;)Lcom/netease/mpay/b/ad;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->d:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ae;

    iget-object v3, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ad;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    invoke-direct {v2, v3, p1, v4}, Lcom/netease/mpay/b/ae;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/lq;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/lq;->z()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/lq;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lq;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/lq;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/lq;->y()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/lq;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lq;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/lq;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/lq;->u()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/netease/mpay/lq;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/lq;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/netease/mpay/lq;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/lq;->x()V

    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/lq;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lq;->e:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method private s()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/lq;->p:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/lq;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->S:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ca:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/netease/mpay/lq;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cc:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/lq;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/lq;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cd:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/BottomLinkButtons;

    iput-object v0, p0, Lcom/netease/mpay/lq;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/lq;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/lq;->f:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v2, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v2}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/lq;->e:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ad;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v0}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->aC:I

    invoke-static {v2, v3, v4, v1}, Lcom/netease/mpay/cq;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v2}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/lq;->g:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/lq;->g:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/lq;->h:Lcom/netease/mpay/e/b/af;

    goto :goto_1
.end method

.method private t()V
    .locals 5

    invoke-virtual {p0}, Lcom/netease/mpay/lq;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/lq;->w()V

    new-instance v0, Lcom/netease/mpay/lq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/lq$a;-><init>(Lcom/netease/mpay/lq;Lcom/netease/mpay/lr;)V

    iget-object v1, p0, Lcom/netease/mpay/lq;->l:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/lq;->u()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v1, p0, Lcom/netease/mpay/lq;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/netease/mpay/lr;

    invoke-direct {v1, p0}, Lcom/netease/mpay/lr;-><init>(Lcom/netease/mpay/lq;)V

    iget-object v2, p0, Lcom/netease/mpay/lq;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bc:I

    sget v4, Lcom/netease/mpay/widget/RIdentifier$e;->m:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/lq;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    invoke-virtual {v1}, Lcom/netease/mpay/view/BottomLinkButtons;->a()V

    iget-object v1, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-boolean v1, v1, Lcom/netease/mpay/b/ad;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/lq;->n:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/netease/mpay/lq;->z()V

    iget-object v1, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/lu;

    invoke-direct {v2, p0}, Lcom/netease/mpay/lu;-><init>(Lcom/netease/mpay/lq;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/lq;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/netease/mpay/lt;

    invoke-direct {v2, p0}, Lcom/netease/mpay/lt;-><init>(Lcom/netease/mpay/lq;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private u()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private v()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private w()V
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v1, v1, Lcom/netease/mpay/b/ad;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v1, v1, Lcom/netease/mpay/b/ad;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v7}, Lcom/netease/mpay/lq;->a(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->v:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->bb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v5}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v7, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v7}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/netease/mpay/server/response/r;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/netease/mpay/widget/RIdentifier$f;->ce:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/widget/ba;->a(Landroid/content/Context;Landroid/widget/AutoCompleteTextView;ILjava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;[Ljava/lang/String;[Ljava/lang/String;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/lq;->o:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/netease/mpay/lq;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/lv;

    invoke-direct {v1, p0}, Lcom/netease/mpay/lv;-><init>(Lcom/netease/mpay/lq;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/lw;

    invoke-direct {v1, p0}, Lcom/netease/mpay/lw;-><init>(Lcom/netease/mpay/lq;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/lx;

    invoke-direct {v1, p0}, Lcom/netease/mpay/lx;-><init>(Lcom/netease/mpay/lq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/ly;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ly;-><init>(Lcom/netease/mpay/lq;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/lz;

    invoke-direct {v1, p0}, Lcom/netease/mpay/lz;-><init>(Lcom/netease/mpay/lq;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private x()V
    .locals 5

    const/16 v4, 0x7d0

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1}, Lcom/netease/mpay/widget/ba;->a(Landroid/widget/AutoCompleteTextView;)V

    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/lq;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/netease/mpay/cq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    invoke-virtual {v1}, Lcom/netease/mpay/b/ad;->a()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ac:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/cq;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/lq;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/lq;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private y()V
    .locals 2

    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/lq;->a(J)V

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/lq;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/ad;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ad;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ad;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/netease/mpay/lq;->a(ILcom/netease/mpay/b/al;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/netease/mpay/lq;->b(ILcom/netease/mpay/b/al;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/netease/mpay/lq;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/netease/mpay/lq;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lcom/netease/mpay/lq;->p:Z

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/lq;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/lq;->t()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/lq;->i:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/lq;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/lq;->a(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/lq;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lq;->d:Lcom/netease/mpay/b/ad;

    iget-object v0, v0, Lcom/netease/mpay/b/ad;->b:Ljava/lang/String;

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/lq;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/lq;->q:Z

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/mpay/lq;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/lq;->t()V

    return-void
.end method

.method public l()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    return v0
.end method
