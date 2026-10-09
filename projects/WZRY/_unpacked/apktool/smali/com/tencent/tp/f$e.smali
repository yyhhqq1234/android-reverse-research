.class public final Lcom/tencent/tp/f$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static activity_main:I

.field public static activity_ter_safe:I

.field public static issues_item:I

.field public static message_box:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7f030000

    sput v0, Lcom/tencent/tp/f$e;->activity_main:I

    const v0, 0x7f030001

    sput v0, Lcom/tencent/tp/f$e;->activity_ter_safe:I

    const v0, 0x7f030002

    sput v0, Lcom/tencent/tp/f$e;->issues_item:I

    const v0, 0x7f030003

    sput v0, Lcom/tencent/tp/f$e;->message_box:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
