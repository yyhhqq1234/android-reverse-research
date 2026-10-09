.class public Lcom/applovin/impl/m4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:I

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Lcom/applovin/impl/i4;

.field private f:Lcom/applovin/impl/h4$b;

.field private g:Lcom/applovin/impl/h4$a;

.field private h:Lcom/applovin/impl/i4;

.field private i:Landroid/app/Dialog;

.field private final j:Lcom/applovin/impl/p;


# direct methods
.method public static synthetic $r8$lambda$5X4yrgpisStcFzt7hj6d3AKG0F8(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAoxZ2EsIGj1LDAe5b-_8MMJX2o(Lcom/applovin/impl/m4;Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/m4;->a(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/applovin/impl/m4$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/m4$a;-><init>(Lcom/applovin/impl/m4;)V

    iput-object v0, p0, Lcom/applovin/impl/m4;->j:Lcom/applovin/impl/p;

    .line 134
    iput-object p1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    .line 136
    sget-object v0, Lcom/applovin/impl/sj;->q6:Lcom/applovin/impl/sj;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/m4;->b:I

    return-void
.end method

.method private a(Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 1

    .line 1296
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1297
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1299
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 1303
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 1305
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 1306
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1308
    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/m4;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/applovin/impl/m4;->i:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()Lcom/applovin/impl/i4;
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 808
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/i4;

    .line 810
    invoke-virtual {v2}, Lcom/applovin/impl/i4;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/applovin/impl/m4;)Lcom/applovin/impl/i4;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/applovin/impl/m4;->h:Lcom/applovin/impl/i4;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;)Lcom/applovin/impl/i4;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/applovin/impl/m4;->h:Lcom/applovin/impl/i4;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/m4;Ljava/lang/String;)Lcom/applovin/impl/i4;
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->a(Ljava/lang/String;)Lcom/applovin/impl/i4;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/applovin/impl/i4;
    .locals 4

    .line 1765
    iget-object v0, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1767
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/i4;

    .line 1769
    invoke-virtual {v2}, Lcom/applovin/impl/i4;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private synthetic a(Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 2

    .line 2072
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "android:id/alertTitle"

    const/4 v1, 0x0

    .line 2073
    invoke-virtual {p3, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 2074
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2075
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2076
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2079
    iget p3, p0, Lcom/applovin/impl/m4;->b:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p3, 0x30

    .line 2082
    invoke-static {p2, p3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    return-void
.end method

.method private a(Lcom/applovin/impl/i4;)V
    .locals 3

    .line 3120
    new-instance v0, Lcom/applovin/impl/m4$g;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/m4$g;-><init>(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 3127
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 3128
    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 9

    if-nez p1, :cond_0

    const-string p1, "Consent flow state is null"

    .line 2272
    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->b(Ljava/lang/String;)V

    return-void

    .line 2276
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->I()Lcom/applovin/impl/sdk/n;

    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transitioning to state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinSdk"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i4$b;->a:Lcom/applovin/impl/i4$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    .line 2280
    invoke-static {p2}, Lcom/applovin/impl/r;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2282
    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;)V

    return-void

    .line 2286
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/j4;

    .line 2287
    iput-object v0, p0, Lcom/applovin/impl/m4;->h:Lcom/applovin/impl/i4;

    .line 2289
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2290
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2292
    invoke-virtual {v0}, Lcom/applovin/impl/j4;->e()Ljava/util/List;

    move-result-object v4

    .line 2293
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/impl/k4;

    .line 2295
    new-instance v6, Lcom/applovin/impl/m4$b;

    invoke-direct {v6, p0, v5, p1, p2}, Lcom/applovin/impl/m4$b;-><init>(Lcom/applovin/impl/m4;Lcom/applovin/impl/k4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    .line 2320
    invoke-virtual {v5}, Lcom/applovin/impl/k4;->c()Lcom/applovin/impl/k4$a;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/k4$a;->b:Lcom/applovin/impl/k4$a;

    if-ne v7, v8, :cond_3

    .line 2322
    invoke-virtual {v5}, Lcom/applovin/impl/k4;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2324
    :cond_3
    invoke-virtual {v5}, Lcom/applovin/impl/k4;->c()Lcom/applovin/impl/k4$a;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/k4$a;->c:Lcom/applovin/impl/k4$a;

    if-ne v7, v8, :cond_4

    .line 2326
    invoke-virtual {v5}, Lcom/applovin/impl/k4;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2330
    :cond_4
    invoke-virtual {v5}, Lcom/applovin/impl/k4;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2334
    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/j4;->g()Ljava/lang/String;

    move-result-object p1

    .line 2337
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2339
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2342
    sget v5, Lcom/applovin/sdk/R$string;->applovin_terms_of_service_text:I

    invoke-static {v5}, Lcom/applovin/impl/sdk/j;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 2343
    sget v6, Lcom/applovin/sdk/R$string;->applovin_privacy_policy_text:I

    invoke-static {v6}, Lcom/applovin/impl/sdk/j;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v2

    aput-object v6, v7, v3

    .line 2344
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2345
    invoke-static {p1, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->containsAtLeastOneSubstring(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2347
    iget-object p1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/h4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/h4;->h()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2350
    new-instance v2, Lcom/applovin/impl/m4$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/m4$c;-><init>(Lcom/applovin/impl/m4;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 2359
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2360
    invoke-static {v4, p1, v2, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 2363
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/h4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/h4;->g()Landroid/net/Uri;

    move-result-object p1

    .line 2364
    new-instance v2, Lcom/applovin/impl/m4$d;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/m4$d;-><init>(Lcom/applovin/impl/m4;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 2373
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2374
    invoke-static {v4, p1, v2, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 2378
    :cond_8
    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2379
    invoke-virtual {v0}, Lcom/applovin/impl/j4;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2380
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2382
    new-instance v0, Lcom/applovin/impl/m4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/m4$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/m4;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2398
    iput-object p1, p0, Lcom/applovin/impl/m4;->i:Landroid/app/Dialog;

    .line 2399
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    .line 2401
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i4$b;->b:Lcom/applovin/impl/i4$b;

    if-ne v0, v1, :cond_b

    .line 2403
    check-cast p1, Lcom/applovin/impl/l4;

    .line 2404
    invoke-virtual {p1}, Lcom/applovin/impl/l4;->f()Ljava/lang/String;

    move-result-object v0

    .line 2405
    invoke-virtual {p1}, Lcom/applovin/impl/l4;->e()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_a

    .line 2408
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    :cond_a
    const-string v2, "flow_type"

    const-string v3, "unified"

    .line 2410
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    iget-object v2, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->z()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2415
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/m4;->b(Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 2417
    :cond_b
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i4$b;->c:Lcom/applovin/impl/i4$b;

    if-ne v0, v1, :cond_c

    .line 2419
    invoke-virtual {p0, v3}, Lcom/applovin/impl/m4;->a(Z)V

    .line 2420
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/m4;->b(Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 2422
    :cond_c
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i4$b;->f:Lcom/applovin/impl/i4$b;

    if-ne v0, v1, :cond_e

    .line 2424
    invoke-static {p2}, Lcom/applovin/impl/r;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2426
    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;)V

    return-void

    .line 2430
    :cond_d
    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->p()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/m4$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/m4$e;-><init>(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->loadCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$d;)V

    goto/16 :goto_3

    .line 2439
    :cond_e
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i4$b;->g:Lcom/applovin/impl/i4$b;

    const-string v4, "cf_start"

    if-ne v0, v1, :cond_10

    .line 2441
    invoke-static {p2}, Lcom/applovin/impl/r;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2443
    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;)V

    return-void

    .line 2447
    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->z()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 2449
    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->p()Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/m4$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/m4$f;-><init>(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/applovin/impl/privacy/cmp/CmpServiceImpl;->showCmp(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;)V

    goto/16 :goto_3

    .line 2464
    :cond_10
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i4$b;->h:Lcom/applovin/impl/i4$b;

    if-ne v0, v1, :cond_15

    .line 2466
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->a()Lcom/applovin/impl/i4$a;

    move-result-object v0

    .line 2467
    sget-object v1, Lcom/applovin/impl/i4$a;->b:Lcom/applovin/impl/i4$a;

    if-ne v0, v1, :cond_14

    .line 2469
    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Lcom/applovin/impl/h4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/h4;->e()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->GDPR:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/yp;->c(Lcom/applovin/impl/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    .line 2470
    :goto_2
    iget-object v4, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->s()Lcom/applovin/sdk/AppLovinSdkConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcom/applovin/sdk/AppLovinSdkConfiguration;->getConsentFlowUserGeography()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object v4

    if-eq v4, v1, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    const/4 v2, 0x1

    .line 2471
    :cond_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Landroid/app/Activity;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 2475
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid consent flow decision type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 2478
    :cond_15
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i4$b;->i:Lcom/applovin/impl/i4$b;

    if-ne v0, v1, :cond_17

    .line 2480
    iget-object v0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/g4;->a(Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 2483
    iget-object v1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->z()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    .line 2485
    iput-object v0, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    .line 2486
    invoke-direct {p0}, Lcom/applovin/impl/m4;->a()Lcom/applovin/impl/i4;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    goto :goto_3

    .line 2490
    :cond_16
    invoke-virtual {p0}, Lcom/applovin/impl/m4;->c()V

    goto :goto_3

    .line 2493
    :cond_17
    invoke-virtual {p1}, Lcom/applovin/impl/i4;->c()Lcom/applovin/impl/i4$b;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/i4$b;->d:Lcom/applovin/impl/i4$b;

    if-ne p2, v0, :cond_18

    .line 2496
    invoke-virtual {p0}, Lcom/applovin/impl/m4;->c()V

    goto :goto_3

    .line 2500
    :cond_18
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid consent flow destination state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/applovin/impl/i4;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 2940
    invoke-virtual {p1, p3}, Lcom/applovin/impl/i4;->a(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/applovin/impl/m4;->a(Ljava/lang/String;)Lcom/applovin/impl/i4;

    move-result-object p3

    .line 2941
    invoke-direct {p0, p1, p3, p2}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 0

    .line 3117
    iput-object p1, p0, Lcom/applovin/impl/m4;->e:Lcom/applovin/impl/i4;

    .line 3119
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/m4;->c(Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/m4;->b(Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/m4;Landroid/app/Dialog;)Landroid/app/Activity;
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->a(Landroid/app/Dialog;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/m4;)Landroid/app/Dialog;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/applovin/impl/m4;->i:Landroid/app/Dialog;

    return-object p0
.end method

.method private b(Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 894
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/m4;Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/applovin/impl/m4;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 585
    invoke-static {p1, v0}, Lcom/applovin/impl/p6;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Last started states: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/m4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLast successful state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/m4;->e:Lcom/applovin/impl/i4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/la;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/ka;->S:Lcom/applovin/impl/ka;

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/impl/la;->a(Lcom/applovin/impl/ka;Ljava/lang/String;Ljava/util/Map;)V

    .line 590
    iget-object v0, p0, Lcom/applovin/impl/m4;->g:Lcom/applovin/impl/h4$a;

    if-eqz v0, :cond_0

    .line 592
    new-instance v1, Lcom/applovin/impl/f4;

    sget v2, Lcom/applovin/impl/f4;->f:I

    invoke-direct {v1, v2, p1}, Lcom/applovin/impl/f4;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/h4$a;->a(Lcom/applovin/impl/f4;)V

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/m4;->c()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/m4;)Lcom/applovin/impl/i4;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/applovin/impl/m4;->e:Lcom/applovin/impl/i4;

    return-object p0
.end method

.method private c(Lcom/applovin/impl/i4;Landroid/app/Activity;)V
    .locals 1

    .line 391
    new-instance v0, Lcom/applovin/impl/m4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/m4$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/m4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/m4;)Lcom/applovin/impl/sdk/j;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/m4;)Lcom/applovin/impl/h4$a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/applovin/impl/m4;->g:Lcom/applovin/impl/h4$a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/app/Activity;Lcom/applovin/impl/h4$b;)V
    .locals 3

    .line 2749
    iget-object v0, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2751
    iget-object p2, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->I()Lcom/applovin/impl/sdk/n;

    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result p2

    const-string v0, "AppLovinSdk"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->I()Lcom/applovin/impl/sdk/n;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to start states: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->I()Lcom/applovin/impl/sdk/n;

    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->I()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Consent flow already in progress for states: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    :cond_1
    new-instance p1, Lcom/applovin/impl/f4;

    sget p2, Lcom/applovin/impl/f4;->e:I

    const-string v0, "Consent flow is already in progress."

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/f4;-><init>(ILjava/lang/String;)V

    .line 2755
    new-instance p2, Lcom/applovin/impl/h4$a;

    invoke-direct {p2, p1}, Lcom/applovin/impl/h4$a;-><init>(Lcom/applovin/impl/f4;)V

    .line 2757
    invoke-interface {p3, p2}, Lcom/applovin/impl/h4$b;->a(Lcom/applovin/impl/h4$a;)V

    return-void

    .line 2763
    :cond_2
    iput-object p1, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    .line 2764
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/m4;->d:Ljava/lang/String;

    .line 2765
    iput-object p3, p0, Lcom/applovin/impl/m4;->f:Lcom/applovin/impl/h4$b;

    .line 2766
    new-instance p1, Lcom/applovin/impl/h4$a;

    invoke-direct {p1}, Lcom/applovin/impl/h4$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/m4;->g:Lcom/applovin/impl/h4$a;

    .line 2768
    invoke-static {p2}, Lcom/applovin/impl/sdk/j;->a(Landroid/content/Context;)Lcom/applovin/impl/q;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/m4;->j:Lcom/applovin/impl/p;

    invoke-virtual {p1, p3}, Lcom/applovin/impl/q;->a(Lcom/applovin/impl/p;)V

    .line 2771
    invoke-direct {p0}, Lcom/applovin/impl/m4;->a()Lcom/applovin/impl/i4;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/applovin/impl/m4;->a(Lcom/applovin/impl/i4;Lcom/applovin/impl/i4;Landroid/app/Activity;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 2641
    invoke-static {}, Lcom/applovin/impl/sdk/j;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/a4;->b(ZLandroid/content/Context;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/applovin/impl/m4;->c:Ljava/util/List;

    .line 195
    iput-object v0, p0, Lcom/applovin/impl/m4;->e:Lcom/applovin/impl/i4;

    .line 197
    iget-object v1, p0, Lcom/applovin/impl/m4;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->e()Lcom/applovin/impl/q;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/m4;->j:Lcom/applovin/impl/p;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/q;->b(Lcom/applovin/impl/p;)V

    .line 199
    iget-object v1, p0, Lcom/applovin/impl/m4;->f:Lcom/applovin/impl/h4$b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/m4;->g:Lcom/applovin/impl/h4$a;

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v1, v2}, Lcom/applovin/impl/h4$b;->a(Lcom/applovin/impl/h4$a;)V

    .line 204
    :cond_0
    iput-object v0, p0, Lcom/applovin/impl/m4;->f:Lcom/applovin/impl/h4$b;

    .line 205
    iput-object v0, p0, Lcom/applovin/impl/m4;->g:Lcom/applovin/impl/h4$a;

    return-void
.end method
