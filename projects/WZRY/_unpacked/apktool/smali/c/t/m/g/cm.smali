.class public final Lc/t/m/g/cm;
.super Lc/t/m/g/cn;
.source "TL"

# interfaces
.implements Lc/t/m/g/cl;


# static fields
.field public static final a:Lc/t/m/g/cm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lc/t/m/g/cm;

    invoke-direct {v0}, Lc/t/m/g/cm;-><init>()V

    sput-object v0, Lc/t/m/g/cm;->a:Lc/t/m/g/cm;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "dummy"

    const-string v1, "dummy"

    invoke-direct {p0, v0, v1}, Lc/t/m/g/cn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static b()Lc/t/m/g/cl;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lc/t/m/g/cm;->a:Lc/t/m/g/cm;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
