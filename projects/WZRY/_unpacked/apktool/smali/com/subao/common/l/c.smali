.class public Lcom/subao/common/l/c;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/l/c$o;,
        Lcom/subao/common/l/c$p;,
        Lcom/subao/common/l/c$n;,
        Lcom/subao/common/l/c$c;,
        Lcom/subao/common/l/c$j;,
        Lcom/subao/common/l/c$i;,
        Lcom/subao/common/l/c$l;,
        Lcom/subao/common/l/c$k;,
        Lcom/subao/common/l/c$m;,
        Lcom/subao/common/l/c$g;,
        Lcom/subao/common/l/c$f;,
        Lcom/subao/common/l/c$h;,
        Lcom/subao/common/l/c$e;,
        Lcom/subao/common/l/c$d;,
        Lcom/subao/common/l/c$b;,
        Lcom/subao/common/l/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/subao/common/l/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/subao/common/l/c;

    invoke-direct {v0}, Lcom/subao/common/l/c;-><init>()V

    sput-object v0, Lcom/subao/common/l/c;->a:Lcom/subao/common/l/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static a()Lcom/subao/common/l/c;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/subao/common/l/c;->a:Lcom/subao/common/l/c;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;ILcom/subao/common/l/c$h;Lcom/subao/common/l/c$b;)V
    .locals 3

    .prologue
    .line 54
    invoke-static {p1, p2, p3, p4}, Lcom/subao/common/l/c$o;->a(Ljava/lang/String;ILcom/subao/common/l/c$h;Lcom/subao/common/l/c$b;)Lcom/subao/common/l/c$n;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/l/c$n;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public a([Lcom/subao/common/e/f$a;[Lcom/subao/common/e/f$a;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p1, p2}, Lcom/subao/common/l/c$g;->a([Lcom/subao/common/e/f$a;[Lcom/subao/common/e/f$a;)V

    .line 63
    return-void
.end method
