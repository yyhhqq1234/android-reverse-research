.class public final Lcom/tencent/tp/f$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static issues_txt:I

.field public static menu_settings:I

.field public static message_txt:I

.field public static sdk_dev_btn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f080001

    sput v0, Lcom/tencent/tp/f$d;->issues_txt:I

    const v0, 0x7f080003

    sput v0, Lcom/tencent/tp/f$d;->menu_settings:I

    const v0, 0x7f080002

    sput v0, Lcom/tencent/tp/f$d;->message_txt:I

    const/high16 v0, 0x7f080000

    sput v0, Lcom/tencent/tp/f$d;->sdk_dev_btn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
