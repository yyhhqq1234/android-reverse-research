.class final enum Lc/t/m/g/cv$a;
.super Ljava/lang/Enum;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/t/m/g/cv$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/t/m/g/cv$a;

.field public static final enum b:Lc/t/m/g/cv$a;

.field public static final enum c:Lc/t/m/g/cv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lc/t/m/g/cv$a;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cv$a;->a:Lc/t/m/g/cv$a;

    new-instance v0, Lc/t/m/g/cv$a;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v3}, Lc/t/m/g/cv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cv$a;->b:Lc/t/m/g/cv$a;

    new-instance v0, Lc/t/m/g/cv$a;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v4}, Lc/t/m/g/cv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cv$a;->c:Lc/t/m/g/cv$a;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lc/t/m/g/cv$a;

    sget-object v1, Lc/t/m/g/cv$a;->a:Lc/t/m/g/cv$a;

    aput-object v1, v0, v2

    sget-object v1, Lc/t/m/g/cv$a;->b:Lc/t/m/g/cv$a;

    aput-object v1, v0, v3

    sget-object v1, Lc/t/m/g/cv$a;->c:Lc/t/m/g/cv$a;

    aput-object v1, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
