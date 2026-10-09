.class public Lcom/netease/mobile/link/MobileLinkActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mcount/listener/ITrackerHelper;


# static fields
.field public static final TAG:Ljava/lang/String; = "MobileLinkActivity"

.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/netease/mobile/link/r3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Lcom/netease/mobile/link/r3;

.field public c:Lcom/netease/mobile/link/y;

.field public final d:Lcom/netease/mobile/link/MobileLinkActivity$a;

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mobile/link/MobileLinkActivity;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/netease/mobile/link/MobileLinkActivity$a;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/MobileLinkActivity$a;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;)V

    iput-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    return-void
.end method

.method public static open(Landroid/app/Activity;ILcom/netease/mobile/link/r3;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "scene"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lcom/netease/mobile/link/MobileLinkActivity;->f:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const-string p2, "callback"

    .line 2
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class p1, Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "MobileLink"

    const-string v1, "onGuideInLoginShow"

    .line 8
    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/netease/mobile/link/j6$a;->a:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lcom/netease/mobile/link/j6$a;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget-object v3, Lcom/netease/mobile/link/j6$a;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    sget-object v1, Lcom/netease/mobile/link/j6$a;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/netease/mobile/link/b5;)V
    .locals 4

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-boolean v0, v0, Lcom/netease/mobile/link/a5;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 4
    new-instance v1, Lcom/netease/mobile/link/s4;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v0

    .line 5
    iget-object v2, p1, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 6
    new-instance v3, Lcom/netease/mobile/link/n3;

    invoke-direct {v3, p0, p1}, Lcom/netease/mobile/link/n3;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;Lcom/netease/mobile/link/b5;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/netease/mobile/link/s4;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/netease/mobile/link/v;

    new-instance v1, Lcom/netease/mobile/link/MobileLinkActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mobile/link/MobileLinkActivity$b;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;Lcom/netease/mobile/link/b5;)V

    invoke-direct {v0, v1}, Lcom/netease/mobile/link/v;-><init>(Lcom/netease/mobile/link/n;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method

.method public final b()V
    .locals 4

    sget-object v0, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    invoke-virtual {p0}, Lcom/netease/mobile/link/MobileLinkActivity;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGuideLink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileLink"

    .line 1
    invoke-static {v2, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/t;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "startGuideLink: YD is available"

    .line 3
    invoke-static {v2, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/netease/mobile/link/m4;

    new-instance v1, Lcom/netease/mobile/link/q3;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/q3;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/netease/mobile/link/m4;-><init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/f5;->a()V

    goto :goto_0

    :cond_0
    const-string v1, "startGuideLink: YD is not available"

    .line 5
    invoke-static {v2, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/p4;->a()V

    invoke-static {}, Lcom/netease/mobile/link/z3;->b()Lcom/netease/mobile/link/z3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/z3;->d()V

    iget-object v1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    iget-object v2, p0, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    const-string v3, ""

    invoke-static {v0, v3, v2}, Lcom/netease/mobile/link/p0;->c(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    aget v7, v3, v0

    int-to-float v7, v7

    const/high16 v8, 0x43160000    # 150.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    aget v7, v3, v0

    goto :goto_0

    :cond_0
    aget v7, v3, v0

    add-int/lit8 v7, v7, -0x64

    :goto_0
    const/4 v9, 0x1

    aget v10, v3, v9

    int-to-float v10, v10

    cmpg-float v10, v10, v8

    if-gez v10, :cond_1

    aget v10, v3, v9

    goto :goto_1

    :cond_1
    aget v10, v3, v9

    add-int/lit8 v10, v10, -0x64

    :goto_1
    aget v11, v3, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v11

    iget v11, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v11, v11, v8

    if-lez v11, :cond_2

    add-int/lit8 v12, v12, 0x64

    :cond_2
    aget v3, v3, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_3

    add-int/lit8 v9, v9, 0x64

    :cond_3
    int-to-float v3, v7

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_4

    int-to-float v3, v12

    cmpl-float v3, v5, v3

    if-gtz v3, :cond_4

    int-to-float v3, v10

    cmpg-float v3, v6, v3

    if-ltz v3, :cond_4

    int-to-float v3, v9

    cmpl-float v3, v6, v3

    if-lez v3, :cond_5

    :cond_4
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    const-string v0, "EEkEEXLymcNjM42yLY3Bn6AO15aGy4yq"

    return-object v0
.end method

.method public getLibTag()Ljava/lang/String;
    .locals 1

    const-string v0, "mobile_link"

    return-object v0
.end method

.method public getTrackName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method public getTrackProperties(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public isIgnored()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    .line 1
    iget-object v1, v0, Lcom/netease/mobile/link/y;->c:Lcom/netease/mobile/link/m0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/netease/mobile/link/y;->b:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mobile/link/m0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    sget v0, Lcom/netease/mobile/link/w;->e:I

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    .line 2
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/netease/mobile/link/h6;->a(Landroid/view/Window;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance v1, Lcom/netease/mobile/link/i5;

    invoke-direct {v1}, Lcom/netease/mobile/link/i5;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 6
    :cond_2
    sget p1, Lcom/netease/mobile/link/R$layout;->mobile_link__activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lcom/netease/mobile/link/y;

    invoke-direct {p1, p0}, Lcom/netease/mobile/link/y;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "scene"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->a:I

    const-string v1, "callback"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 8
    sget-object v1, Lcom/netease/mobile/link/MobileLinkActivity;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mobile/link/r3;

    .line 9
    iput-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->b:Lcom/netease/mobile/link/r3;

    .line 10
    iget p1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->a:I

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/MobileLinkActivity$a;->a(I)V

    return-void

    .line 11
    :cond_3
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    iget p1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->a:I

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb

    if-eq p1, v0, :cond_4

    .line 12
    sget-object p1, Lcom/netease/mobile/link/b5;->i:Lcom/netease/mobile/link/b5;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/netease/mobile/link/b5;->h:Lcom/netease/mobile/link/b5;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/netease/mobile/link/b5;->g:Lcom/netease/mobile/link/b5;

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/netease/mobile/link/b5;->e:Lcom/netease/mobile/link/b5;

    .line 13
    :goto_2
    sget-object v0, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    if-ne p1, v0, :cond_a

    const-string p1, "MobileLink"

    const-string v0, "onGuideInLoginInit"

    .line 14
    invoke-static {p1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-boolean p1, Lcom/netease/mobile/link/w;->b:Z

    if-nez p1, :cond_9

    sget-object p1, Lcom/netease/mobile/link/j6$a;->a:Ljava/util/HashMap;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lcom/netease/mobile/link/j6$a;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget-object v2, Lcom/netease/mobile/link/j6$a;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 17
    :cond_9
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    .line 19
    new-instance v0, Lcom/netease/mobile/link/m3;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/m3;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;)V

    invoke-interface {p1, v0}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->checkGuideInLogin(Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;)V

    goto :goto_3

    .line 20
    :cond_a
    invoke-virtual {p0, p1}, Lcom/netease/mobile/link/MobileLinkActivity;->a(Lcom/netease/mobile/link/b5;)V

    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    invoke-static {}, Lcom/netease/mobile/link/z3;->b()Lcom/netease/mobile/link/z3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/z3;->e()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/a5;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, v0, Lcom/netease/mobile/link/a5;->c:Ljava/lang/String;

    const-string v2, "game_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/a5;->f:Ljava/lang/String;

    const-string v2, "yd_business_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/a5;->e:Ljava/lang/String;

    const-string v2, "app_channel"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/a5;->d:Ljava/lang/String;

    const-string v2, "login_channel"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/netease/mobile/link/f6;->a:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->b:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->e:Ljava/lang/String;

    const-string v2, "ticket"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/netease/mobile/link/f6;->f:Z

    const-string v2, "is_mpay_ticket"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, v0, Lcom/netease/mobile/link/f6;->m:I

    const-string v2, "login_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, v0, Lcom/netease/mobile/link/f6;->n:I

    const-string v2, "bind_status"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->h:Ljava/lang/String;

    const-string v2, "link_mobile"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    const-string v2, "inputed_link_mobile"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->j:Ljava/lang/String;

    const-string v2, "history_mobile"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->k:Ljava/lang/String;

    const-string v2, "yd_phone_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->l:Ljava/lang/String;

    const-string v2, "yd_pre_num"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mobile/link/f6;->o:Ljava/lang/String;

    const-string v2, "update_ticket"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/netease/mobile/link/f6;->p:Z

    const-string v1, "need_reverify"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity;->e:Ljava/lang/String;

    return-void
.end method
