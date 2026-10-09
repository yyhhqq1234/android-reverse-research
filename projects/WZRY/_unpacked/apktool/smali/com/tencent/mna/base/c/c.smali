.class public final enum Lcom/tencent/mna/base/c/c;
.super Ljava/lang/Enum;
.source "ReportType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/mna/base/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/mna/base/c/c;

.field public static final enum b:Lcom/tencent/mna/base/c/c;

.field public static final enum c:Lcom/tencent/mna/base/c/c;

.field public static final enum d:Lcom/tencent/mna/base/c/c;

.field public static final enum e:Lcom/tencent/mna/base/c/c;

.field public static final enum f:Lcom/tencent/mna/base/c/c;

.field public static final enum g:Lcom/tencent/mna/base/c/c;

.field public static final enum h:Lcom/tencent/mna/base/c/c;

.field private static final synthetic l:[Lcom/tencent/mna/base/c/c;


# instance fields
.field i:Ljava/lang/String;

.field j:I

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "START"

    const-string v2, "mna_start_p"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->a:Lcom/tencent/mna/base/c/c;

    .line 5
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "NORMAL"

    const-string v2, "ino_newacc_p"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->b:Lcom/tencent/mna/base/c/c;

    .line 6
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "PREDICT"

    const-string v2, "mna_predict_p"

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->c:Lcom/tencent/mna/base/c/c;

    .line 7
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "END"

    const-string v2, "mna_end_p"

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->d:Lcom/tencent/mna/base/c/c;

    .line 8
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "DIAGNOSE"

    const-string v2, "kartin_report"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->e:Lcom/tencent/mna/base/c/c;

    .line 9
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "BANDWIDTH"

    const/4 v2, 0x5

    const-string v3, "mna_brand_p"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->f:Lcom/tencent/mna/base/c/c;

    .line 10
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "WIFI"

    const/4 v2, 0x6

    const-string v3, "mna_wifisdk_p"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->g:Lcom/tencent/mna/base/c/c;

    .line 11
    new-instance v0, Lcom/tencent/mna/base/c/c;

    const-string v1, "QUERY_NETWORK"

    const/4 v2, 0x7

    const-string v3, "mna_query_network_p"

    const/16 v4, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v0, Lcom/tencent/mna/base/c/c;->h:Lcom/tencent/mna/base/c/c;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tencent/mna/base/c/c;

    sget-object v1, Lcom/tencent/mna/base/c/c;->a:Lcom/tencent/mna/base/c/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/mna/base/c/c;->b:Lcom/tencent/mna/base/c/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/mna/base/c/c;->c:Lcom/tencent/mna/base/c/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/mna/base/c/c;->d:Lcom/tencent/mna/base/c/c;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/mna/base/c/c;->e:Lcom/tencent/mna/base/c/c;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/mna/base/c/c;->f:Lcom/tencent/mna/base/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/mna/base/c/c;->g:Lcom/tencent/mna/base/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/mna/base/c/c;->h:Lcom/tencent/mna/base/c/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mna/base/c/c;->l:[Lcom/tencent/mna/base/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/base/c/c;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/tencent/mna/base/c/c;->i:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/tencent/mna/base/c/c;->j:I

    .line 24
    iput-boolean p5, p0, Lcom/tencent/mna/base/c/c;->k:Z

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/base/c/c;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/tencent/mna/base/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/base/c/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mna/base/c/c;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/mna/base/c/c;->l:[Lcom/tencent/mna/base/c/c;

    invoke-virtual {v0}, [Lcom/tencent/mna/base/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/base/c/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tencent/mna/base/c/c;->j:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mna/base/c/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/tencent/mna/base/c/c;->k:Z

    return v0
.end method
