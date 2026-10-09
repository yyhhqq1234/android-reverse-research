.class public Loicq/wlogin_sdk/a/j;
.super Ljava/lang/Object;
.source "reg_status.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static x:Z

.field public static y:J

.field public static z:Ljava/lang/String;


# instance fields
.field public A:[B

.field public B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Loicq/wlogin_sdk/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:[B

.field public f:[B

.field public g:J

.field public h:J

.field public i:I

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:I

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:[B

.field public s:I

.field public t:I

.field public u:J

.field public v:[B

.field public w:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "e75734d01ad9b57f"

    sput-object v0, Loicq/wlogin_sdk/a/j;->a:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Loicq/wlogin_sdk/a/j;->x:Z

    .line 50
    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->c:Ljava/lang/String;

    .line 13
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->e:[B

    .line 14
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->f:[B

    .line 17
    const/16 v0, 0x5f

    iput v0, p0, Loicq/wlogin_sdk/a/j;->i:I

    .line 19
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->k:[B

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->l:[B

    .line 25
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->n:[B

    .line 28
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->o:[B

    .line 30
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->p:[B

    .line 32
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->q:[B

    .line 35
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->r:[B

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->A:[B

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    return-void
.end method
