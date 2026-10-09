.class public final enum Lcom/netease/mobile/link/b5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mobile/link/b5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netease/mobile/link/b5;

.field public static final enum c:Lcom/netease/mobile/link/b5;

.field public static final enum d:Lcom/netease/mobile/link/b5;

.field public static final enum e:Lcom/netease/mobile/link/b5;

.field public static final enum f:Lcom/netease/mobile/link/b5;

.field public static final enum g:Lcom/netease/mobile/link/b5;

.field public static final enum h:Lcom/netease/mobile/link/b5;

.field public static final enum i:Lcom/netease/mobile/link/b5;

.field public static final enum j:Lcom/netease/mobile/link/b5;

.field public static final enum k:Lcom/netease/mobile/link/b5;

.field public static final synthetic l:[Lcom/netease/mobile/link/b5;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/netease/mobile/link/b5;

    const-string v1, "Link"

    const/4 v2, 0x0

    const-string v3, "LINK"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/mobile/link/b5;->b:Lcom/netease/mobile/link/b5;

    new-instance v1, Lcom/netease/mobile/link/b5;

    const-string v3, "GuideInLogin"

    const/4 v4, 0x1

    const-string v5, "LOGINUPDATE"

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    new-instance v3, Lcom/netease/mobile/link/b5;

    const-string v5, "RoleUpgrade"

    const/4 v6, 0x2

    const-string v7, "UPGRADEUPDATE"

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/netease/mobile/link/b5;->d:Lcom/netease/mobile/link/b5;

    new-instance v5, Lcom/netease/mobile/link/b5;

    const-string v7, "Verify"

    const/4 v8, 0x3

    const-string v9, "VERIFY"

    invoke-direct {v5, v7, v8, v9}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/netease/mobile/link/b5;->e:Lcom/netease/mobile/link/b5;

    new-instance v7, Lcom/netease/mobile/link/b5;

    const-string v10, "Verify_Update"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/netease/mobile/link/b5;->f:Lcom/netease/mobile/link/b5;

    new-instance v9, Lcom/netease/mobile/link/b5;

    const-string v10, "Update"

    const/4 v12, 0x5

    const-string v13, "UPDATE"

    invoke-direct {v9, v10, v12, v13}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/netease/mobile/link/b5;->g:Lcom/netease/mobile/link/b5;

    new-instance v10, Lcom/netease/mobile/link/b5;

    const-string v13, "ForceUpdate"

    const/4 v14, 0x6

    const-string v15, "FORCEUPDATE"

    invoke-direct {v10, v13, v14, v15}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/netease/mobile/link/b5;->h:Lcom/netease/mobile/link/b5;

    new-instance v13, Lcom/netease/mobile/link/b5;

    const-string v15, "Status"

    const/4 v14, 0x7

    const-string v12, "STATUS"

    invoke-direct {v13, v15, v14, v12}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/netease/mobile/link/b5;->i:Lcom/netease/mobile/link/b5;

    new-instance v15, Lcom/netease/mobile/link/b5;

    const-string v14, "Status_Verify"

    const/16 v11, 0x8

    invoke-direct {v15, v14, v11, v12}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/netease/mobile/link/b5;->j:Lcom/netease/mobile/link/b5;

    new-instance v14, Lcom/netease/mobile/link/b5;

    const-string v11, "Status_Update"

    const/16 v8, 0x9

    invoke-direct {v14, v11, v8, v12}, Lcom/netease/mobile/link/b5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/netease/mobile/link/b5;->k:Lcom/netease/mobile/link/b5;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/netease/mobile/link/b5;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    const/4 v0, 0x3

    aput-object v5, v11, v0

    const/4 v0, 0x4

    aput-object v7, v11, v0

    const/4 v0, 0x5

    aput-object v9, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v13, v11, v0

    const/16 v0, 0x8

    aput-object v15, v11, v0

    aput-object v14, v11, v8

    sput-object v11, Lcom/netease/mobile/link/b5;->l:[Lcom/netease/mobile/link/b5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mobile/link/b5;
    .locals 1

    const-class v0, Lcom/netease/mobile/link/b5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mobile/link/b5;

    return-object p0
.end method

.method public static values()[Lcom/netease/mobile/link/b5;
    .locals 1

    sget-object v0, Lcom/netease/mobile/link/b5;->l:[Lcom/netease/mobile/link/b5;

    invoke-virtual {v0}, [Lcom/netease/mobile/link/b5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mobile/link/b5;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/netease/mobile/link/b5;->e:Lcom/netease/mobile/link/b5;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mobile/link/b5;->j:Lcom/netease/mobile/link/b5;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
