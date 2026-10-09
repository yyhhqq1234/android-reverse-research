.class public abstract Lcom/netease/mobile/link/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/k0$f;,
        Lcom/netease/mobile/link/k0$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Landroid/widget/PopupWindow;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TData;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/view/View;

.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/netease/mobile/link/k0$f;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;IIIIIILandroid/view/View;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TData;>;IIIIIII",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    sget v9, Lcom/netease/mobile/link/R$dimen;->mobile_link__space_0:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/netease/mobile/link/k0;-><init>(Ljava/util/ArrayList;IIIIIILandroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;IIIIIILandroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TData;>;IIIIIII",
            "Landroid/view/View;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/netease/mobile/link/k0;->b:Ljava/util/ArrayList;

    iput p2, p0, Lcom/netease/mobile/link/k0;->c:I

    iput p3, p0, Lcom/netease/mobile/link/k0;->d:I

    iput p4, p0, Lcom/netease/mobile/link/k0;->e:I

    iput p5, p0, Lcom/netease/mobile/link/k0;->f:I

    iput p6, p0, Lcom/netease/mobile/link/k0;->g:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/netease/mobile/link/k0;->h:I

    iput p7, p0, Lcom/netease/mobile/link/k0;->i:I

    iput-object p8, p0, Lcom/netease/mobile/link/k0;->j:Landroid/view/View;

    invoke-virtual {p8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/netease/mobile/link/j0;

    invoke-direct {p2, p0}, Lcom/netease/mobile/link/j0;-><init>(Lcom/netease/mobile/link/k0;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput p9, p0, Lcom/netease/mobile/link/k0;->k:I

    iput p10, p0, Lcom/netease/mobile/link/k0;->l:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/netease/mobile/link/k0;->m:I

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/k0;IILcom/netease/mobile/link/k0$e;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/netease/mobile/link/k0;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    sget v2, Lcom/netease/mobile/link/R$style;->MobileLink_FadeAnimation:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    iget-object p0, p0, Lcom/netease/mobile/link/k0;->j:Landroid/view/View;

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v2, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    add-int/2addr p1, p2

    const/16 p2, 0x33

    invoke-virtual {v1, p0, p2, v2, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    if-eqz p3, :cond_0

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/netease/mobile/link/l0;

    invoke-direct {p1, p3}, Lcom/netease/mobile/link/l0;-><init>(Lcom/netease/mobile/link/k0$e;)V

    const-wide/16 p2, 0x32

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/netease/mobile/link/k0$e;)V
    .locals 11

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/netease/mobile/link/k0;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/netease/mobile/link/k0;->i:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/netease/mobile/link/k0;->i:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    new-instance v3, Landroid/widget/PopupWindow;

    .line 2
    iget v4, p0, Lcom/netease/mobile/link/k0;->m:I

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/netease/mobile/link/g5;

    :cond_2
    iget v4, p0, Lcom/netease/mobile/link/k0;->d:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/netease/mobile/link/k0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/netease/mobile/link/k0;->f:I

    iget v7, p0, Lcom/netease/mobile/link/k0;->g:I

    iget v8, p0, Lcom/netease/mobile/link/k0;->h:I

    if-le v5, v8, :cond_3

    move v5, v8

    :cond_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    .line 3
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int v6, v6, v5

    sub-int/2addr v5, v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netease/mobile/link/g5;->getShadowDistance()F

    move-result v5

    invoke-virtual {v2}, Lcom/netease/mobile/link/g5;->getShadowRadius()F

    move-result v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    add-int/2addr v7, v5

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_5
    invoke-direct {v3, v0, v1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    .line 5
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v0

    if-eq v0, v8, :cond_6

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 6
    :cond_6
    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/netease/mobile/link/k0$a;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/k0$a;-><init>(Lcom/netease/mobile/link/k0;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/netease/mobile/link/k0;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/netease/mobile/link/k0;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/netease/mobile/link/k0$b;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/netease/mobile/link/k0$b;-><init>(Lcom/netease/mobile/link/k0;IILcom/netease/mobile/link/k0$e;)V

    .line 7
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lcom/netease/mobile/link/g6;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, v6, v3}, Lcom/netease/mobile/link/g6;-><init>(Landroid/os/Handler;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v4, v9, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_7
    :goto_2
    if-nez v9, :cond_8

    .line 8
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/netease/mobile/link/k0$c;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/netease/mobile/link/k0$c;-><init>(Lcom/netease/mobile/link/k0;IILcom/netease/mobile/link/k0$e;)V

    const-wide/16 v0, 0x64

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    .line 9
    invoke-virtual {p2}, Lcom/netease/mobile/link/z5;->b()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/netease/mcount/MCountAgent;->hookPopupWindowViewsClicked(Landroid/widget/PopupWindow;)V

    .line 10
    :cond_9
    iget-object p2, p0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/netease/mobile/link/k0;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    new-instance v0, Lcom/netease/mobile/link/k0$d;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/k0$d;-><init>(Lcom/netease/mobile/link/k0;)V

    iget-object v1, p0, Lcom/netease/mobile/link/k0;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/netease/mobile/link/k0;->e:I

    .line 11
    new-instance v3, Lcom/netease/mobile/link/b3;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/netease/mobile/link/b3;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/netease/mobile/link/b3$a;)V

    invoke-virtual {p2, v3}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method
