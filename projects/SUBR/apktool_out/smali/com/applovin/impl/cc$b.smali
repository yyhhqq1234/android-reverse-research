.class public Lcom/applovin/impl/cc$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/applovin/impl/cc$c;

.field b:Z

.field c:Landroid/text/SpannedString;

.field d:Landroid/text/SpannedString;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/cc$c;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/applovin/impl/cc$b;->g:I

    .line 231
    iput v0, p0, Lcom/applovin/impl/cc$b;->h:I

    const/high16 v1, -0x1000000

    .line 233
    iput v1, p0, Lcom/applovin/impl/cc$b;->i:I

    .line 234
    iput v1, p0, Lcom/applovin/impl/cc$b;->j:I

    .line 235
    iput v0, p0, Lcom/applovin/impl/cc$b;->k:I

    .line 236
    iput v0, p0, Lcom/applovin/impl/cc$b;->l:I

    .line 242
    iput-object p1, p0, Lcom/applovin/impl/cc$b;->a:Lcom/applovin/impl/cc$c;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 554
    iput p1, p0, Lcom/applovin/impl/cc$b;->h:I

    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/applovin/impl/cc$b;
    .locals 1

    .line 873
    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_disclosure_arrow:I

    iput v0, p0, Lcom/applovin/impl/cc$b;->h:I

    .line 874
    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_disclosureButtonColor:I

    invoke-static {v0, p1}, Lcom/applovin/impl/t3;->a(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/cc$b;->l:I

    return-object p0
.end method

.method public a(Landroid/text/SpannedString;)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 1368
    iput-object p1, p0, Lcom/applovin/impl/cc$b;->d:Landroid/text/SpannedString;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/applovin/impl/cc$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 1109
    iput-boolean p1, p0, Lcom/applovin/impl/cc$b;->b:Z

    return-object p0
.end method

.method public a()Lcom/applovin/impl/cc;
    .locals 2

    .line 1369
    new-instance v0, Lcom/applovin/impl/cc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/cc;-><init>(Lcom/applovin/impl/cc$b;Lcom/applovin/impl/cc$a;)V

    return-object v0
.end method

.method public b(I)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 572
    iput p1, p0, Lcom/applovin/impl/cc$b;->l:I

    return-object p0
.end method

.method public b(Landroid/text/SpannedString;)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 1132
    iput-object p1, p0, Lcom/applovin/impl/cc$b;->c:Landroid/text/SpannedString;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/applovin/impl/cc$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 885
    iput-boolean p1, p0, Lcom/applovin/impl/cc$b;->m:Z

    return-object p0
.end method

.method public c(I)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 549
    iput p1, p0, Lcom/applovin/impl/cc$b;->j:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/applovin/impl/cc$b;
    .locals 1

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/cc$b;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/cc$b;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/applovin/impl/cc$b;
    .locals 0

    .line 531
    iput p1, p0, Lcom/applovin/impl/cc$b;->i:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/applovin/impl/cc$b;
    .locals 1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/cc$b;->b(Landroid/text/SpannedString;)Lcom/applovin/impl/cc$b;

    move-result-object p1

    return-object p1
.end method
