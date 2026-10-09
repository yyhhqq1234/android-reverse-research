.class public final Lcom/tencent/a/b/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/b/d$b;


# static fields
.field private static volatile A:Ljava/lang/String;

.field public static a:Ljava/lang/StringBuffer;

.field public static b:Ljava/lang/StringBuffer;

.field private static volatile c:Landroid/content/Context;

.field private static r:Z

.field private static t:Z

.field private static volatile u:I

.field private static volatile v:I

.field private static volatile w:I

.field private static volatile x:I

.field private static volatile y:I

.field private static volatile z:I


# instance fields
.field private B:Z

.field private C:D

.field private D:D

.field private E:I

.field private d:Lcom/tencent/b/a/a/f;

.field private e:Lcom/tencent/a/b/d/a;

.field private f:Lcom/tencent/a/b/d/b;

.field private g:Lcom/tencent/a/b/d/f;

.field private h:Lcom/tencent/a/b/h/a/b;

.field private i:Lcom/tencent/a/b/h/b$1;

.field private j:Lcom/tencent/a/b/h/f;

.field private k:Lcom/tencent/a/b/d/c;

.field private l:Lcom/tencent/a/b/d/a$1;

.field private volatile m:Lcom/tencent/a/b/g/b;

.field private n:Lcom/tencent/a/b/g/a;

.field private o:I

.field private p:Lcom/tencent/b/a/a/i$j;

.field private q:Z

.field private s:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x3e8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/tencent/a/b/d/e;->a:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/tencent/a/b/d/e;->b:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/a/b/d/e;->r:Z

    sput-boolean v1, Lcom/tencent/a/b/d/e;->t:Z

    sget v0, Lcom/tencent/a/b/b;->a:I

    sput v0, Lcom/tencent/a/b/d/e;->u:I

    sget v0, Lcom/tencent/a/b/b;->b:I

    sput v0, Lcom/tencent/a/b/d/e;->v:I

    sput v1, Lcom/tencent/a/b/d/e;->w:I

    sput v2, Lcom/tencent/a/b/d/e;->x:I

    sput v2, Lcom/tencent/a/b/d/e;->y:I

    sput v1, Lcom/tencent/a/b/d/e;->z:I

    sget-object v0, Lcom/tencent/a/a/a/i;->b:Lcom/tencent/a/a/a/i;

    invoke-static {v0}, Lcom/tencent/a/a/a/i;->a(Lcom/tencent/a/a/a/i;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/b/d/e;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/b/a/a/f;IZ)V
    .locals 6

    const/4 v0, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/tencent/a/b/d/e;->o:I

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->p:Lcom/tencent/b/a/a/i$j;

    iput-boolean v1, p0, Lcom/tencent/a/b/d/e;->q:Z

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->s:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/tencent/a/b/d/e;->B:Z

    iput-wide v2, p0, Lcom/tencent/a/b/d/e;->C:D

    iput-wide v2, p0, Lcom/tencent/a/b/d/e;->D:D

    iput v5, p0, Lcom/tencent/a/b/d/e;->E:I

    iput-boolean p3, p0, Lcom/tencent/a/b/d/e;->B:Z

    sput p2, Lcom/tencent/a/b/d/e;->z:I

    invoke-virtual {p1}, Lcom/tencent/b/a/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/a/b/d/e;->t:Z

    invoke-static {}, Lcom/tencent/a/b/h/a/a;->a()Lcom/tencent/a/b/h/a/a;

    move-result-object v0

    sget-object v2, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/a/b/h/a/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    invoke-static {}, Lcom/tencent/a/b/d$a;->a()Lcom/tencent/a/b/d$a;

    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/a/b/d$a;->a(Ljava/lang/String;Z)I

    move-result v0

    sput v0, Lcom/tencent/a/b/d/e;->y:I

    :cond_0
    invoke-static {}, Lcom/tencent/a/b/d$a;->a()Lcom/tencent/a/b/d$a;

    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/a/b/d$a;->b(Ljava/lang/String;Z)I

    move-result v0

    sput v0, Lcom/tencent/a/b/d/e;->z:I

    invoke-static {}, Lcom/tencent/a/b/d$a;->a()Lcom/tencent/a/b/d$a;

    sget v0, Lcom/tencent/a/b/d/e;->y:I

    sget v2, Lcom/tencent/a/b/d/e;->z:I

    invoke-static {v0, v2, v1}, Lcom/tencent/a/b/d$a;->a(IIZ)I

    move-result v0

    sput v0, Lcom/tencent/a/b/d/e;->u:I

    invoke-static {}, Lcom/tencent/a/b/d$a;->a()Lcom/tencent/a/b/d$a;

    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/a/b/d$a;->a(Ljava/lang/String;Z)I

    move-result v0

    sput v0, Lcom/tencent/a/b/d/e;->x:I

    invoke-static {}, Lcom/tencent/a/b/d$a;->a()Lcom/tencent/a/b/d$a;

    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/a/b/d$a;->b(Ljava/lang/String;Z)I

    move-result v0

    sput v0, Lcom/tencent/a/b/d/e;->w:I

    invoke-static {}, Lcom/tencent/a/b/d$a;->a()Lcom/tencent/a/b/d$a;

    sget v0, Lcom/tencent/a/b/d/e;->x:I

    sget v2, Lcom/tencent/a/b/d/e;->w:I

    invoke-static {v0, v2, v4}, Lcom/tencent/a/b/d$a;->a(IIZ)I

    move-result v0

    sput v0, Lcom/tencent/a/b/d/e;->v:I

    new-instance v0, Lcom/tencent/a/b/d/e$1;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/d/e$1;-><init>(Lcom/tencent/a/b/d/e;)V

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e$1;->start()V

    :cond_1
    iput-object p1, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    new-instance v0, Lcom/tencent/a/b/d/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/d/a$1;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    new-instance v0, Lcom/tencent/a/b/g/b;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/g/b;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    new-instance v0, Lcom/tencent/a/b/d/c;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/d/c;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->k:Lcom/tencent/a/b/d/c;

    new-instance v0, Lcom/tencent/a/b/g/a;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/g/a;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    new-instance v0, Lcom/tencent/a/b/d/a;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/d/a;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->e:Lcom/tencent/a/b/d/a;

    new-instance v0, Lcom/tencent/a/b/d/b;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/d/b;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    new-instance v0, Lcom/tencent/a/b/d/f;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/d/f;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->g:Lcom/tencent/a/b/d/f;

    new-instance v0, Lcom/tencent/a/b/h/a/b;

    invoke-direct {v0}, Lcom/tencent/a/b/h/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->h:Lcom/tencent/a/b/h/a/b;

    new-instance v0, Lcom/tencent/a/b/h/b$1;

    sget v2, Lcom/tencent/a/b/d/e;->z:I

    sget v3, Lcom/tencent/a/b/d/e;->u:I

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/a/b/h/b$1;-><init>(Lcom/tencent/a/b/d/e;II)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->i:Lcom/tencent/a/b/h/b$1;

    new-instance v0, Lcom/tencent/a/b/h/f;

    invoke-direct {v0, p0}, Lcom/tencent/a/b/h/f;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v0, p0, Lcom/tencent/a/b/d/e;->j:Lcom/tencent/a/b/h/f;

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->k:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/c;->a()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    invoke-virtual {p1, v2, v0}, Lcom/tencent/b/a/a/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {p1, v2, v0}, Lcom/tencent/b/a/a/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    invoke-virtual {p1, v2, v0}, Lcom/tencent/b/a/a/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v0, v4}, Lcom/tencent/a/b/d/a$1;->b(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v0, v4}, Lcom/tencent/a/b/d/a$1;->a(Z)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a$1;->c(I)V

    invoke-static {p0}, Lcom/tencent/a/b/a;->a(Lcom/tencent/a/b/d/e;)V

    new-instance v0, Lcom/tencent/a/b/d;

    sget-object v1, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    sget v2, Lcom/tencent/a/b/d/e;->w:I

    invoke-direct {v0, v1, p0, p2, v2}, Lcom/tencent/a/b/d;-><init>(Landroid/content/Context;Lcom/tencent/a/b/d$b;II)V

    invoke-virtual {v0}, Lcom/tencent/a/b/d;->a()V

    return-void

    :cond_2
    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    const-string v2, "mapsdk_pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "worldEnable"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_0
.end method

.method static synthetic B()I
    .locals 1

    sget v0, Lcom/tencent/a/b/d/e;->w:I

    return v0
.end method

.method static synthetic C()I
    .locals 1

    sget v0, Lcom/tencent/a/b/d/e;->v:I

    return v0
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/tencent/a/b/d/e$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/a/b/d/e$3;-><init>(Lcom/tencent/a/b/d/e;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e$3;->start()V

    :cond_0
    return-void
.end method

.method public static c(Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/a/b/d/e;->r:Z

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/a/b/d/e;->t:Z

    return-void
.end method

.method public static e(Z)V
    .locals 3

    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/a/b/d/e;->c:Landroid/content/Context;

    const-string v1, "mapsdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "worldEnable"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static n()V
    .locals 0

    return-void
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/a/b/d/e;->r:Z

    return v0
.end method

.method public static s()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/a/b/d/e;->t:Z

    return v0
.end method

.method public static t()I
    .locals 1

    sget v0, Lcom/tencent/a/b/d/e;->v:I

    return v0
.end method

.method public static u()I
    .locals 1

    sget v0, Lcom/tencent/a/b/d/e;->w:I

    return v0
.end method

.method public static v()I
    .locals 1

    sget v0, Lcom/tencent/a/b/d/e;->x:I

    return v0
.end method

.method public static w()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/a/b/d/e;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static x()I
    .locals 1

    sget v0, Lcom/tencent/a/b/d/e;->u:I

    return v0
.end method

.method public static y()I
    .locals 1

    sget v0, Lcom/tencent/a/b/d/e;->y:I

    return v0
.end method


# virtual methods
.method public final A()Lcom/tencent/a/b/h/a/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->h:Lcom/tencent/a/b/h/a/b;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/g/b;->a(Z)V

    :goto_0
    iput p1, p0, Lcom/tencent/a/b/d/e;->o:I

    invoke-virtual {p0, v2, v2}, Lcom/tencent/a/b/d/e;->a(ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    invoke-virtual {v0, v2}, Lcom/tencent/a/b/g/b;->a(Z)V

    goto :goto_0
.end method

.method public final a(IIIIIILandroid/graphics/Bitmap;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/b/d/e;->B:Z

    if-nez v0, :cond_0

    sput p2, Lcom/tencent/a/b/d/e;->z:I

    :cond_0
    sput p1, Lcom/tencent/a/b/b;->e:I

    sput p3, Lcom/tencent/a/b/d/e;->u:I

    sput p6, Lcom/tencent/a/b/d/e;->v:I

    sput p5, Lcom/tencent/a/b/d/e;->w:I

    sput p4, Lcom/tencent/a/b/d/e;->x:I

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->i:Lcom/tencent/a/b/h/b$1;

    invoke-virtual {v0, p2}, Lcom/tencent/a/b/h/b$1;->a(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->i:Lcom/tencent/a/b/h/b$1;

    invoke-virtual {v0, p3}, Lcom/tencent/a/b/h/b$1;->b(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    invoke-virtual {v0, p7}, Lcom/tencent/a/b/g/b;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 8

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    const-string v1, "ANIMATION_ENABLED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a$1;->d(Z)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    const-string v1, "SCROLL_ENABLED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a$1;->b(Z)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    const-string v1, "ZOOM_ENABLED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a$1;->c(Z)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    const-string v1, "LOGO_POSITION"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a$1;->b(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    const-string v1, "SCALEVIEW_POSITION"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a$1;->c(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    const-string v1, "SCALE_CONTROLL_ENABLED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a$1;->a(Z)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    const-string v1, "ZOOM"

    iget-object v2, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    invoke-virtual {v2}, Lcom/tencent/a/b/d/b;->c()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tencent/a/b/d/b;->a(DZLcom/tencent/b/a/a/c;)V

    const-string v0, "CENTERX"

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "CENTERY"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    new-instance v3, Lcom/tencent/a/b/b/c;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/tencent/a/b/b/c;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/tencent/a/b/d/b;->a(Lcom/tencent/a/b/b/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/a/b/e/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->h:Lcom/tencent/a/b/h/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/h/a/b;->a(Lcom/tencent/a/b/e/a/c;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/g/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-static {}, Lcom/tencent/a/b/g/a;->b()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-static {}, Lcom/tencent/a/b/g/a;->c()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/g/a;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/a/b/d/e;->q:Z

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->i:Lcom/tencent/a/b/h/b$1;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/a/b/h/b$1;->a(ZZ)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/f;->i()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/f;->postInvalidate()V

    return-void
.end method

.method public final b()Lcom/tencent/a/b/d/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->k:Lcom/tencent/a/b/d/c;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/g/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/b;->invalidate()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "ANIMATION_ENABLED"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/a$1;->k()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SCROLL_ENABLED"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/a$1;->h()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ZOOM_ENABLED"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/a$1;->i()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "LOGO_POSITION"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/a$1;->j()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SCALEVIEW_POSITION"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/a$1;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SCALE_CONTROLL_ENABLED"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/a$1;->g()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ZOOM"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/b;->c()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "CENTERX"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/b;->b()Lcom/tencent/a/b/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/a/b/b/c;->b()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "CENTERY"

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/b;->b()Lcom/tencent/a/b/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/a/b/b/c;->a()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method protected final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/a/b/d/e;->q:Z

    return-void
.end method

.method public final c()Lcom/tencent/a/b/d/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/g/a;->a(I)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public final d()Lcom/tencent/b/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    return-object v0
.end method

.method public final e()Lcom/tencent/a/b/d/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->e:Lcom/tencent/a/b/d/a;

    return-object v0
.end method

.method public final f(Z)D
    .locals 8

    const-wide v0, 0x3fb999999999999aL    # 0.1

    iget-object v2, p0, Lcom/tencent/a/b/d/e;->f:Lcom/tencent/a/b/d/b;

    invoke-virtual {v2}, Lcom/tencent/a/b/d/b;->b()Lcom/tencent/a/b/b/c;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2}, Lcom/tencent/a/b/b/c;->a()D

    move-result-wide v2

    const-wide v6, 0x41731bf84570a3d7L    # 2.003750834E7

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v2, v4, v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v2, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/a/b/d/e;->C:D

    :goto_0
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_1
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/tencent/a/b/d/e;->D:D

    goto :goto_0

    :cond_2
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    iget v4, p0, Lcom/tencent/a/b/d/e;->E:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide v2, 0x41031bf8456d5cfbL    # 156543.0339

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_1
.end method

.method public final f()Lcom/tencent/a/b/d/a$1;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->l:Lcom/tencent/a/b/d/a$1;

    return-object v0
.end method

.method public final g()Lcom/tencent/a/b/h/b$1;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->i:Lcom/tencent/a/b/h/b$1;

    return-object v0
.end method

.method public final h()Lcom/tencent/a/b/d/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->g:Lcom/tencent/a/b/d/f;

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->e()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->d()V

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/tencent/a/b/d/e;->o:I

    return v0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->n:Lcom/tencent/a/b/g/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/a;->a()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/b;->a()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->e:Lcom/tencent/a/b/d/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/a;->b()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/f;->j()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/f;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->i:Lcom/tencent/a/b/h/b$1;

    invoke-virtual {v0}, Lcom/tencent/a/b/h/b$1;->a()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->h:Lcom/tencent/a/b/h/a/b;

    invoke-virtual {v0}, Lcom/tencent/a/b/h/a/b;->a()V

    sget-object v0, Lcom/tencent/a/b/d/e;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/a/b/d/e;->a:Ljava/lang/StringBuffer;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/tencent/a/b/d/e;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/a/b/d/e;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/tencent/a/b/d/e;->b:Ljava/lang/StringBuffer;

    const-string v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/tencent/a/b/d/e;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/tencent/a/b/d/e;->a(ZZ)V

    return-void
.end method

.method protected final o()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->p:Lcom/tencent/b/a/a/i$j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/f;->buildDrawingCache()V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->s:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/f;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v1}, Lcom/tencent/b/a/a/f;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->p:Lcom/tencent/b/a/a/i$j;

    invoke-interface {v1, v0}, Lcom/tencent/b/a/a/i$j;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/f;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/b/d/e;->s:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/a/b/d/e;->s:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/tencent/a/b/d/e;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/a/b/d/e;->s:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->d:Lcom/tencent/b/a/a/f;

    new-instance v1, Lcom/tencent/a/b/d/e$2;

    invoke-direct {v1, p0}, Lcom/tencent/a/b/d/e$2;-><init>(Lcom/tencent/a/b/d/e;)V

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->m:Lcom/tencent/a/b/g/b;

    invoke-virtual {v0}, Lcom/tencent/a/b/g/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/a/b/d/e;->f(Z)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/a/b/d/e;->f(Z)D

    move-result-wide v2

    cmpg-double v4, v2, v6

    if-lez v4, :cond_0

    cmpg-double v4, v0, v6

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/tencent/a/b/d/e;->k:Lcom/tencent/a/b/d/c;

    invoke-virtual {v4, v0, v1}, Lcom/tencent/a/b/d/c;->a(D)V

    iget-object v0, p0, Lcom/tencent/a/b/d/e;->k:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/a/b/d/c;->b(D)V

    goto :goto_0
.end method
