.class public Lcom/ironsource/pa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Lcom/ironsource/pa;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private final g:Lcom/ironsource/oe;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ironsource/jl;->P()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->f()Lcom/ironsource/oe;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/pa;->g:Lcom/ironsource/oe;

    invoke-interface {v0}, Lcom/ironsource/oe;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/pa;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/oe;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/pa;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/oe;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/pa;->c:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/oe;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/pa;->d:Ljava/lang/String;

    invoke-interface {v0}, Lcom/ironsource/oe;->k()I

    move-result v1

    iput v1, p0, Lcom/ironsource/pa;->e:I

    invoke-interface {v0, p1}, Lcom/ironsource/oe;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/pa;->f:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/ironsource/pa;
    .locals 1

    sget-object v0, Lcom/ironsource/pa;->h:Lcom/ironsource/pa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ironsource/pa;

    invoke-direct {v0, p0}, Lcom/ironsource/pa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ironsource/pa;->h:Lcom/ironsource/pa;

    :cond_0
    sget-object p0, Lcom/ironsource/pa;->h:Lcom/ironsource/pa;

    return-object p0
.end method

.method public static g()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ironsource/pa;->h:Lcom/ironsource/pa;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)F
    .locals 1

    iget-object v0, p0, Lcom/ironsource/pa;->g:Lcom/ironsource/oe;

    invoke-interface {v0, p1}, Lcom/ironsource/oe;->m(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/ironsource/pa;->e:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/pa;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/pa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/pa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/pa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/pa;->d:Ljava/lang/String;

    return-object v0
.end method
