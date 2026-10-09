.class Lcom/subao/gamemaster/GameMaster$d;
.super Ljava/lang/Object;
.source "GameMaster.java"

# interfaces
.implements Lcom/subao/gamemaster/GameMaster$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/gamemaster/GameMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1885
    const-string v0, "com.subao.permission.USE_SDK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/subao/gamemaster/GameMaster$d;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1889
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1890
    if-nez v1, :cond_1

    .line 1916
    :cond_0
    :goto_0
    return v0

    .line 1893
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1894
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1898
    const/16 v3, 0x1000

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1899
    if-eqz v1, :cond_0

    .line 1902
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1903
    if-eqz v2, :cond_0

    .line 1906
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1907
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/subao/gamemaster/GameMaster$d;->a:I

    if-lt v5, v6, :cond_2

    .line 1908
    const-string v5, "com.subao.permission.USE_SDK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 1909
    const/4 v0, 0x1

    goto :goto_0

    .line 1906
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1913
    :catch_0
    move-exception v1

    goto :goto_0
.end method
