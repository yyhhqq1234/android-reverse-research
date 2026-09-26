.class final enum Lcom/netease/codescanner/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/codescanner/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netease/codescanner/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/codescanner/a$a;

.field public static final enum b:Lcom/netease/codescanner/a$a;

.field public static final enum c:Lcom/netease/codescanner/a$a;

.field private static final synthetic d:[Lcom/netease/codescanner/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/codescanner/a$a;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/netease/codescanner/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/codescanner/a$a;->a:Lcom/netease/codescanner/a$a;

    new-instance v0, Lcom/netease/codescanner/a$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/netease/codescanner/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/codescanner/a$a;->b:Lcom/netease/codescanner/a$a;

    new-instance v0, Lcom/netease/codescanner/a$a;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/netease/codescanner/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/codescanner/a$a;->c:Lcom/netease/codescanner/a$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/codescanner/a$a;

    sget-object v1, Lcom/netease/codescanner/a$a;->a:Lcom/netease/codescanner/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/codescanner/a$a;->b:Lcom/netease/codescanner/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/codescanner/a$a;->c:Lcom/netease/codescanner/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/codescanner/a$a;->d:[Lcom/netease/codescanner/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/codescanner/a$a;
    .locals 1

    const-class v0, Lcom/netease/codescanner/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/codescanner/a$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/codescanner/a$a;
    .locals 1

    sget-object v0, Lcom/netease/codescanner/a$a;->d:[Lcom/netease/codescanner/a$a;

    invoke-virtual {v0}, [Lcom/netease/codescanner/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/codescanner/a$a;

    return-object v0
.end method
