.class public final Lcom/tencent/tp/f$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static activity_ter_safe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7f070000

    sput v0, Lcom/tencent/tp/f$f;->activity_ter_safe:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
