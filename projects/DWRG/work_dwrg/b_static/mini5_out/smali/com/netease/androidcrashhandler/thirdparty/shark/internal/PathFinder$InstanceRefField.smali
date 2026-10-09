.class final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;
.super Ljava/lang/Object;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceRefField"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;",
        "",
        "declaringClassId",
        "",
        "refObjectId",
        "fieldName",
        "",
        "(JJLjava/lang/String;)V",
        "getDeclaringClassId",
        "()J",
        "getFieldName",
        "()Ljava/lang/String;",
        "getRefObjectId",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final declaringClassId:J

.field private final fieldName:Ljava/lang/String;

.field private final refObjectId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->declaringClassId:J

    .line 510
    iput-wide p3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->refObjectId:J

    .line 511
    iput-object p5, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDeclaringClassId()J
    .locals 2

    .line 509
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->declaringClassId:J

    return-wide v0
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefObjectId()J
    .locals 2

    .line 510
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->refObjectId:J

    return-wide v0
.end method
